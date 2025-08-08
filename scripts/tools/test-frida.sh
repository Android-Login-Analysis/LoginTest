#!/bin/bash

# Test Frida server functionality
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get active device function
get_active_device() {
    adb devices | grep -E "emulator-[0-9]+.*device$" | head -1 | cut -f1
}

log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

# Test Frida server
test_frida() {
    log_info "=== Testing Frida Server ==="
    
    # Get active device
    local device=$(get_active_device)
    if [ -z "$device" ]; then
        log_error "No active device found"
        return 1
    fi
    log_info "Using device: $device"
    
    # Check if resources directory exists
    if [ ! -d "resources" ]; then
        log_error "Resources directory not found"
        return 1
    fi
    
    # Check if frida-server exists
    if [ ! -f "resources/frida-server" ]; then
        log_error "Frida server binary not found"
        return 1
    fi
    
    # Push frida-server to device
    log_info "Pushing Frida server to device..."
    adb -s $device push resources/frida-server /data/local/tmp/
    adb -s $device shell "chmod 755 /data/local/tmp/frida-server"
    
    # Check if file was pushed
    log_info "Verifying Frida server binary..."
    adb -s $device shell "ls -la /data/local/tmp/frida-server"
    
    # Kill any existing frida-server
    log_info "Killing existing Frida server..."
    adb -s $device shell "pkill -f frida-server" 2>/dev/null || true
    sleep 2
    
    # Check if Frida server is compatible with device architecture
    log_info "Checking device architecture..."
    adb -s $device shell "uname -m"
    
    # Try to run Frida server directly
    log_info "Testing Frida server version..."
    adb -s $device shell "cd /data/local/tmp && ./frida-server --version" 2>&1 || true
    
    # Start Frida server in background
    log_info "Starting Frida server..."
    adb -s $device shell "cd /data/local/tmp && nohup ./frida-server > /data/local/tmp/frida.log 2>&1 &"
    
    # Wait for server to start
    sleep 5
    
    # Check if frida-server is running
    sleep 3
    log_info "Checking if Frida server is running..."
    if adb -s $device shell "ps aux | grep frida-server | grep -v grep" >/dev/null 2>&1 || \
       adb -s $device shell "ps | grep frida-server | grep -v grep" >/dev/null 2>&1 || \
       adb -s $device shell "pgrep frida-server" >/dev/null 2>&1; then
        log_success "Frida server is running"
        adb -s $device shell "ps aux | grep frida" 2>/dev/null || adb -s $device shell "ps | grep frida" 2>/dev/null || true
    else
        log_error "Frida server is not running"
    fi
    
    # Show frida logs
    log_info "Frida server logs:"
    adb -s $device shell "cat /data/local/tmp/frida.log" 2>/dev/null || true
    
    # Test Frida connection from host
    log_info "Testing Frida connection..."
    if command -v frida-ps >/dev/null 2>&1; then
        frida-ps -U 2>&1 || true
    else
        log_warn "frida-ps not available on host"
    fi
    
    # Check if port 27042 is listening (Frida default port)
    log_info "Checking network status..."
    adb -s $device shell "netstat -tlnp | grep 27042" 2>/dev/null || true
    
    return 0
}

# Main execution
main() {
    log_info "=== Frida Server Test ==="
    
    if test_frida; then
        log_success "Frida test completed"
        exit 0
    else
        log_error "Frida test failed"
        exit 1
    fi
}

# Run main function
main "$@" 