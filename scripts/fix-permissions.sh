#!/bin/bash

# Fix permissions and setup for Android emulator
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

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    log_error "This script must be run as root"
    exit 1
fi

log_info "=== Fixing Android Emulator Permissions ==="

# Create necessary directories with proper permissions
log_info "Creating directories..."
mkdir -p /root/.android/avd
mkdir -p /root/.android/avd/running
mkdir -p /tmp/android
mkdir -p /var/tmp/android

# Set proper permissions
log_info "Setting permissions..."
chmod 755 /root/.android
chmod 755 /root/.android/avd
chmod 755 /root/.android/avd/running
chmod 1777 /tmp/android
chmod 1777 /var/tmp/android

# Check KVM availability
log_info "Checking KVM availability..."
if [ -e /dev/kvm ]; then
    log_info "KVM device found"
    ls -la /dev/kvm
    # Add current user to kvm group if needed
    usermod -a -G kvm root 2>/dev/null || true
else
    log_warn "KVM device not found - emulator will use software rendering"
fi

# Check and fix SELinux if present
if command -v sestatus >/dev/null 2>&1; then
    log_info "SELinux detected, checking status..."
    if sestatus | grep -q "enabled"; then
        log_warn "SELinux is enabled - this may cause permission issues"
        log_info "Setting SELinux to permissive mode for testing..."
        setenforce 0 2>/dev/null || true
    else
        log_info "SELinux is disabled"
    fi
else
    log_info "SELinux not detected"
fi

# Check Android SDK permissions
log_info "Checking Android SDK permissions..."
if [ -d "/opt/android-sdk" ]; then
    chmod -R 755 /opt/android-sdk
    log_info "Android SDK permissions set"
else
    log_error "Android SDK not found at /opt/android-sdk"
fi

# Check if we can access required devices
log_info "Checking device access..."
for device in /dev/kvm /dev/net/tun /dev/vhost-net; do
    if [ -e "$device" ]; then
        log_info "Device $device found"
        ls -la "$device"
    else
        log_warn "Device $device not found"
    fi
done

# Test ADB
log_info "Testing ADB..."
if command -v adb >/dev/null 2>&1; then
    adb version
    adb kill-server 2>/dev/null || true
    adb start-server 2>/dev/null || true
    log_info "ADB test completed"
else
    log_error "ADB not found"
fi

# Test emulator
log_info "Testing emulator..."
if command -v emulator >/dev/null 2>&1; then
    emulator -version
    log_info "Emulator test completed"
else
    log_error "Emulator not found"
fi

log_info "=== Permission fix completed ==="