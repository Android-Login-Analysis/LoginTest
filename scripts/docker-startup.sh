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
    adb shell getprop ro.build.version.release >/dev/null 2>&1
}

# Check Frida server running
check_frida_server() {
    adb shell ps | grep frida-server >/dev/null 2>&1
}

# Main startup process
main() {
    log_info "=== AndroidLoginDetector Docker Startup ==="
    log_info "Timestamp: $(date)"
    
    # Start emulator
    log_info "Step 1: Starting Android emulator..."
    emulator -avd test_device -no-audio -no-window -gpu swiftshader_indirect -camera-back none -camera-front none &
    EMULATOR_PID=$!
    
    # Wait for emulator to start
    if ! wait_for_condition "check_emulator_running" 30 10 "Emulator to boot"; then
        log_error "Emulator failed to start"
        exit 1
    fi
    
    # Wait for ADB devices
    if ! wait_for_condition "check_adb_devices" 20 5 "ADB device connection"; then
        log_error "No ADB devices connected"
        exit 1
    fi
    
    # Start Frida server
    log_info "Step 2: Starting Frida server..."
    
    # Push Frida server to device
    if [ -f "resources/frida-server" ]; then
        adb push resources/frida-server /data/local/tmp/
        adb shell "chmod 755 /data/local/tmp/frida-server"
        adb shell "/data/local/tmp/frida-server &"
        
        # Wait for Frida server to start
        if ! wait_for_condition "check_frida_server" 15 3 "Frida server to start"; then
            log_error "Frida server failed to start"
            exit 1
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
    
    # Start AndroidLoginDetector
    log_info "Step 4: Starting AndroidLoginDetector..."
    if [ -f "run_detector.sh" ]; then
        ./run_detector.sh --no-check --no-compile
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
    adb shell "pkill -f frida-server" 2>/dev/null || true
    
    # Stop ADB server
    adb kill-server 2>/dev/null || true
    
    log_info "Cleanup completed"
}

# Set signal handler
trap cleanup EXIT INT TERM

# Run main function
main "$@" 