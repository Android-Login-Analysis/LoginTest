#!/bin/bash

# Frida Version Verification Script
# This script ensures Frida client and server versions match

set -e

echo "=== Frida Version Verification ==="

# Check if frida command exists
if ! command -v frida &> /dev/null; then
    echo "ERROR: frida command not found. Please install frida-tools."
    exit 1
fi

# Get client version
CLIENT_VERSION=$(frida --version 2>/dev/null || echo "unknown")
echo "Frida client version: $CLIENT_VERSION"

# Check if we have an active device
DEVICE=$(adb devices | grep -E "emulator-[0-9]+.*device$" | head -1 | cut -f1)
if [ -z "$DEVICE" ]; then
    echo "WARNING: No active Android device found. Cannot check server version."
    echo "Make sure emulator is running before starting detection."
    exit 0
fi

echo "Active device: $DEVICE"

# Check if frida-server exists on device
if ! adb -s $DEVICE shell "ls /data/local/tmp/frida-server" &>/dev/null; then
    echo "WARNING: frida-server not found on device. Will be pushed during startup."
    exit 0
fi

# Get server version
SERVER_VERSION=$(adb -s $DEVICE shell '/data/local/tmp/frida-server --version' 2>/dev/null || echo "unknown")
echo "Frida server version: $SERVER_VERSION"

# Compare versions
if [ "$CLIENT_VERSION" = "$SERVER_VERSION" ]; then
    echo "✅ SUCCESS: Frida versions match ($CLIENT_VERSION)"
    echo "RPC communication should work correctly."
    exit 0
else
    echo "❌ WARNING: Frida version mismatch!"
    echo "Client: $CLIENT_VERSION"
    echo "Server: $SERVER_VERSION"
    echo "This may cause RPC communication failures."
    echo ""
    echo "To fix this issue:"
    echo "1. Update Dockerfile to use matching versions"
    echo "2. Update resources/frida-server to match client version"
    echo "3. Rebuild Docker container"
    exit 1
fi
