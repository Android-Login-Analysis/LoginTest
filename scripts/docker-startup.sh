#!/bin/bash

# Docker startup script
set -e

      
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

log_debug() {
    echo -e "${BLUE}[DEBUG]${NC} $1"
}

# Clean up any existing emulator processes and snapshots
cleanup_emulator() {
    log_info "Cleaning up existing emulator processes..."
    
    # Kill any existing emulator processes
    pkill -f "emulator.*test_device" 2>/dev/null || true
    pkill -f "qemu" 2>/dev/null || true
    
    # Wait for processes to terminate
    sleep 2
    
    # Clean up AVD snapshots that might be stuck
    if [ -d "$HOME/.android/avd/test_device.avd" ]; then
        log_info "Cleaning up AVD snapshots..."
        rm -rf "$HOME/.android/avd/test_device.avd/snapshots" 2>/dev/null || true
        rm -f "$HOME/.android/avd/test_device.avd"/*.lock 2>/dev/null || true
    fi
    
    # Clean up running emulator registry
    rm -f "$HOME/.android/avd/running"/* 2>/dev/null || true
    
    # Restart ADB server
    adb kill-server 2>/dev/null || true
    sleep 1
    adb start-server 2>/dev/null || true
}

# Check and create AVD if needed
check_and_create_avd() {
    log_info "Checking AVD availability..."
    
    # Check if AVD exists
    if [ ! -d "$HOME/.android/avd/test_device.avd" ]; then
        log_info "AVD 'test_device' not found, creating..."
        
        # Create AVD
        echo "no" | ${ANDROID_HOME}/cmdline-tools/latest/bin/avdmanager create avd \
            --name "test_device" \
            --package "system-images;android-29;google_apis;x86_64" \
            --abi "x86_64"
        
        if [ $? -eq 0 ]; then
            log_info "AVD created successfully"
        else
            log_error "Failed to create AVD"
            return 1
        fi
    else
        log_info "AVD 'test_device' found"
    fi
    
    # List available AVDs
    log_info "Available AVDs:"
    ${ANDROID_HOME}/cmdline-tools/latest/bin/avdmanager list avd
}

# Wait for condition
wait_for_condition() {
    local condition=$1
    local max_attempts=$2
    local delay=$3
    local description=$4
    
    log_info "Waiting for: $description"
    
    for ((i=1; i<=max_attempts; i++)); do
        if eval "$condition"; then
            log_info "$description - SUCCESS"
            return 0
        fi
        
        if [ $i -lt $max_attempts ]; then
            log_debug "Attempt $i/$max_attempts failed, waiting ${delay}s..."
            sleep $delay
        fi
    done
    
    log_error "$description - FAILED after $max_attempts attempts"
    return 1
}

# Check ADB devices
check_adb_devices() {
    local devices=$(adb devices | grep -v "List of devices" | grep "device$" | wc -l)
    [ $devices -gt 0 ]
}

# Check emulator running
check_emulator_running() {
    local device=$(get_active_device)
    if [ -n "$device" ]; then
        adb -s $device shell getprop ro.build.version.release > /dev/null 2>&1
    else
        return 1
    fi
}

# Get active device ID
get_active_device() {
    adb devices | grep -E "emulator-[0-9]+.*device$" | head -1 | cut -f1
}

# Check Frida server running
check_frida_server() {
    local device=$(get_active_device)
    if [ -n "$device" ]; then
        # Try multiple ps command formats for compatibility
        adb -s $device shell "ps aux | grep frida-server | grep -v grep" >/dev/null 2>&1 || \
        adb -s $device shell "ps | grep frida-server | grep -v grep" >/dev/null 2>&1 || \
        adb -s $device shell "pgrep frida-server" >/dev/null 2>&1
    else
        return 1
    fi
}

# Install target application from config
install_target_app() {
    local device=$(get_active_device)
    if [ -z "$device" ]; then
        log_error "No active device found for app installation"
        return 1
    fi
    
    # Read app configuration from config.properties
    local app_package=$(grep '^app.package=' src/main/resources/config.properties | cut -d'=' -f2 | tr -d ' ')
    local app_path=$(grep '^app.path=' src/main/resources/config.properties | cut -d'=' -f2 | tr -d ' ')
    
    if [ -z "$app_package" ] || [ -z "$app_path" ]; then
        log_error "App package or path not found in config.properties"
        return 1
    fi
    
    log_info "Installing app: $app_package from $app_path"
    
    # Check if app is already installed
    if adb -s $device shell "pm list packages | grep $app_package" | grep -q "$app_package"; then
        log_info "App $app_package already installed, skipping installation"
        return 0
    fi
    
    # Check if APK file exists
    if [ ! -f "$app_path" ]; then
        log_error "APK file not found: $app_path"
        return 1
    fi
    
    # Install the APK
    log_info "Installing APK: $app_path"
    if adb -s $device install "$app_path"; then
        log_info "Successfully installed $app_package"
        
        # Verify installation
        if adb -s $device shell "pm list packages | grep $app_package" | grep -q "$app_package"; then
            log_info "Installation verified: $app_package is now available"
            return 0
        else
            log_error "Installation verification failed for $app_package"
            return 1
        fi
    else
        log_error "Failed to install $app_package from $app_path"
        return 1
    fi
}

# Main startup process
main() {
    log_info "=== AndroidLoginDetector Docker Startup ==="
    log_info "Timestamp: $(date)"
    
    # Clean up before starting
    cleanup_emulator
    
    # Check and create AVD if needed
    if ! check_and_create_avd; then
        log_error "Failed to setup AVD"
        exit 1
    fi
    
    # Start emulator with additional parameters to avoid snapshot issues
    log_info "Step 1: Starting Android emulator..."
    
    # Kill any existing ADB server first
    adb kill-server 2>/dev/null || true
    sleep 2
    
    # Start emulator with stable parameters and filter graphics errors
    $ANDROID_HOME/emulator/emulator -avd test_device \
        -no-window -no-audio \
        -gpu swiftshader_indirect \
        -memory 2048 \
        -no-boot-anim \
        -netdelay none -netspeed full \
        -qemu -enable-kvm 2>&1 | grep -v "FrameBuffer.cpp" | grep -v "ColorBuffer" &
    EMULATOR_PID=$!
    
    log_info "Emulator started with PID: $EMULATOR_PID"
    
    # Wait for emulator to boot (reduced to 60 seconds, 3 attempts)
    if ! wait_for_condition "check_emulator_running" 60 20 "Emulator to boot"; then
        log_error "Emulator failed to start after multiple attempts"
        log_info "Emulator process status: $(ps aux | grep emulator | grep -v grep || echo 'No emulator process found')"
        log_error "This may be due to hardware acceleration issues in Docker environment"
        log_error "Exiting to prevent infinite retry loop"
        cleanup
        exit 1
    fi
    
    # Wait for ADB devices
    if ! wait_for_condition "check_adb_devices" 20 5 "ADB device connection"; then
        log_error "No ADB devices connected"
        exit 1
    fi
    
    # Step 2: Install target application
    log_info "Step 2: Installing target application..."
    install_target_app
    
    # Step 3: Start Frida server
    log_info "Step 3: Starting Frida server..."
    
    # Push Frida server to device
    if [ -f "resources/frida-server" ]; then
        local device=$(get_active_device)
        if [ -z "$device" ]; then
            log_error "No active device found"
            exit 1
        fi
        
        log_info "Pushing Frida server to device ($device)..."
        adb -s $device push resources/frida-server /data/local/tmp/
        adb -s $device shell "chmod 755 /data/local/tmp/frida-server"
        
        # Check if Frida server is already running
        if adb -s $device shell "ps | grep frida-server" | grep -q frida-server; then
            log_info "Frida server already running, killing existing process..."
            adb -s $device shell "pkill -f frida-server" 2>/dev/null || true
            sleep 2
        fi
        
        # Start Frida server with better error handling
        log_info "Starting Frida server..."
        # Try simple startup first (no listen address)
        
        # Check system compatibility first
        log_info "Checking Android system compatibility..."
        adb -s $device shell "getprop ro.build.version.sdk" || true
        adb -s $device shell "uname -a" || true
        
        # Try multiple startup methods
        log_info "Attempting Frida server startup (method 1: standard)..."
        adb -s $device shell "nohup /data/local/tmp/frida-server > /data/local/tmp/frida.log 2>&1 &" || {
            log_warning "Method 1 failed, trying method 2 with explicit listen address..."
            adb -s $device shell "nohup /data/local/tmp/frida-server -l 0.0.0.0:27042 > /data/local/tmp/frida.log 2>&1 &" || {
                log_warning "Method 2 failed, trying method 3 with su privileges..."
                adb -s $device shell "su -c 'nohup /data/local/tmp/frida-server > /data/local/tmp/frida.log 2>&1 &'" || {
                    log_error "All Frida startup methods failed"
                }
            }
        }
        
        sleep 3
        
        # Verify Frida server is running and check version compatibility
        if check_frida_server; then
            log_info "Frida server started successfully"
            
            # Check version compatibility
            log_info "Verifying Frida version compatibility..."
            local client_version=$(frida --version 2>/dev/null || echo "unknown")
            local server_version=$(adb -s $device shell '/data/local/tmp/frida-server --version' 2>/dev/null || echo "unknown")
            
            log_info "Client Frida version: $client_version"
            log_info "Server Frida version: $server_version"
            
            if [ "$client_version" != "$server_version" ]; then
                log_warning "Frida version mismatch detected!"
                log_warning "Client: $client_version, Server: $server_version"
                log_warning "This may cause RPC communication failures"
            else
                log_info "Frida versions match - RPC communication should work correctly"
            fi
        else
            log_error "Frida server failed to start or not responding"
            # Show frida logs for debugging
            log_info "Frida server logs:"
            adb -s $device shell "cat /data/local/tmp/frida.log" 2>/dev/null || log_warning "No frida logs available"
            return 1
        fi
    else
        log_error "Frida server binary not found"
        exit 1
    fi
    
    # Run environment check
    log_info "Step 3: Running environment check..."
    if [ -f "scripts/docker-environment-check.sh" ]; then
        ./scripts/docker-environment-check.sh
    else
        log_warn "Environment check script not found"
    fi
    
    # Verify Frida versions
    log_info "Step 3.5: Verifying Frida version compatibility..."
    if [ -f "scripts/verify-frida-versions.sh" ]; then
        ./scripts/verify-frida-versions.sh || log_warn "Frida version verification failed"
    else
        log_warn "Frida version verification script not found"
    fi
    
    # Start AndroidLoginDetector
    log_info "Step 4: Starting AndroidLoginDetector..."
    if [ -f "scripts/run_detector.sh" ]; then
        ./scripts/run_detector.sh --no-check --no-compile
    else
        log_error "run_detector.sh not found"
        exit 1
    fi
    
    log_info "=== Startup completed successfully ==="
}

# Cleanup function
cleanup() {
    log_info "Cleaning up..."
    
    # Stop emulator
    if [ ! -z "$EMULATOR_PID" ]; then
        kill $EMULATOR_PID 2>/dev/null || true
    fi
    
    # Stop Frida server
    local device=$(get_active_device)
    if [ -n "$device" ]; then
        adb -s $device shell "pkill -f frida-server" 2>/dev/null || true
    fi
    
    # Stop ADB server
    adb kill-server 2>/dev/null || true
    
    log_info "Cleanup completed"
}

# Set signal handler
trap cleanup EXIT INT TERM

# Run main function
main "$@" 