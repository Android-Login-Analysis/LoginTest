#!/bin/bash

# Test Frida server functionality
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

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

# Test Frida server
test_frida() {
    log_info "=== Testing Frida Server ==="
    
    # Check if device is connected
    if ! adb devices | grep -q "device$"; then
        log_error "No Android device connected"
        return 1
    fi
    
    log_info "Device connected: $(adb devices | grep 'device$')"
    
    # Check if Frida server binary exists
    if [ ! -f "resources/frida-server" ]; then
        log_error "Frida server binary not found at resources/frida-server"
        return 1
    fi
    
    log_info "Frida server binary found"
    
    # Check Frida server binary permissions
    ls -la resources/frida-server
    
    # Push Frida server to device
    log_info "Pushing Frida server to device..."
    adb push resources/frida-server /data/local/tmp/
    
    # Set permissions
    adb shell "chmod 755 /data/local/tmp/frida-server"
    
    # Check if file was pushed correctly
    log_info "Checking Frida server on device..."
    adb shell "ls -la /data/local/tmp/frida-server"
    
    # Kill any existing Frida processes
    log_info "Killing existing Frida processes..."
    adb shell "pkill -f frida-server" 2>/dev/null || true
    sleep 2
    
    # Check if Frida server is compatible with device architecture
    log_info "Checking device architecture..."
    adb shell "uname -m"
    
    # Try to run Frida server directly to see error messages
    log_info "Testing Frida server execution..."
    adb shell "cd /data/local/tmp && ./frida-server --version" 2>&1 || true
    
    # Start Frida server in background with logging
    log_info "Starting Frida server..."
    adb shell "cd /data/local/tmp && nohup ./frida-server > /data/local/tmp/frida.log 2>&1 &"
    
    # Wait for server to start
    sleep 5
    
    # Check if Frida server is running
    log_info "Checking if Frida server is running..."
    if adb shell "ps | grep frida-server" | grep -q frida-server; then
        log_success "Frida server is running!"
        adb shell "ps | grep frida-server"
    else
        log_error "Frida server is not running"
    fi
    
    # Check Frida server logs
    log_info "Frida server logs:"
    adb shell "cat /data/local/tmp/frida.log" 2>/dev/null || true
    
    # Test Frida connection from host
    log_info "Testing Frida connection..."
    if command -v frida-ps >/dev/null 2>&1; then
        frida-ps -U 2>&1 || true
    else
        log_warn "frida-ps not available on host"
    fi
    
    # Check if port 27042 is listening (Frida default port)
    log_info "Checking Frida port..."
    adb shell "netstat -tlnp | grep 27042" 2>/dev/null || true
    
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