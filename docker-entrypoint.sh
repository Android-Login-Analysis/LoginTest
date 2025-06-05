#!/bin/bash

# Use host's adb
ADB=/opt/android-sdk/platform-tools/adb

# Kill any existing ADB server
$ADB kill-server || true

# Start ADB server
$ADB start-server || true

# Wait for ADB server to start
sleep 2

# Check if device is connected
echo "Checking for connected devices..."
$ADB devices || true

# Wait for device to be connected
echo "Waiting for device to be connected..."
timeout=60
while [ $timeout -gt 0 ]; do
    if $ADB devices | grep -q "emulator-[0-9]"; then
        echo "Emulator connected!"
        # Wait for emulator to be fully booted
        $ADB wait-for-device
        $ADB shell 'while [[ -z $(getprop sys.boot_completed) ]]; do sleep 1; done;'
        break
    fi
    echo "Waiting for emulator... ($timeout seconds remaining)"
    sleep 5
    timeout=$((timeout - 5))
done

if [ $timeout -le 0 ]; then
    echo "Error: No emulator connected after 60 seconds"
    echo "Please make sure Android Studio emulator is running"
    exit 1
fi

# Start Appium server
echo "Starting Appium server..."
appium --use-drivers uiautomator2 &
APPIUM_PID=$!

# Wait for Appium server to start
sleep 5

# Run tests
echo "Running tests..."
mvn clean test

# Save test results
TEST_RESULT=$?

# Stop Appium server
echo "Stopping Appium server..."
kill $APPIUM_PID

# Stop ADB server
$ADB kill-server || true

# Exit with test result
exit $TEST_RESULT 