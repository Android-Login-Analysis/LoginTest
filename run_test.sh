#!/bin/bash

# Set timeout in seconds
TIMEOUT=30

# Check Python environment
echo "Checking Python environment..."
if ! command -v python3 &> /dev/null; then
    echo "Python3 is not installed. Please install Python3 first."
    exit 1
fi

# Install required Python packages
echo "Installing required Python packages..."
pip3 install frida-tools

# Check Node.js and npm
echo "Checking Node.js and npm..."
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Please install Node.js first."
    exit 1
fi

if ! command -v npm &> /dev/null; then
    echo "npm is not installed. Please install npm first."
    exit 1
fi

# Check and install Appium
echo "Checking Appium..."
if ! command -v appium &> /dev/null; then
    echo "Installing Appium..."
    npm install -g appium
    appium driver install uiautomator2
fi

# Check adb
echo "Checking adb..."
if ! command -v adb &> /dev/null; then
    echo "adb is not installed. Please install Android SDK first."
    exit 1
fi

# Check device connection
echo "Checking device connection..."
if ! adb devices | grep -q "device$"; then
    echo "No device connected. Please connect a device first."
    exit 1
fi

# Check root access
echo "Checking root access..."
adb root
adb remount

# Check Frida server
echo "Checking Frida server..."
if ! adb shell "ps | grep frida-server" | grep -q "frida-server"; then
    echo "Starting Frida server..."
    
    # Try to stop any existing old processes first
    adb shell "pkill -f frida-server" || true
    
    # Push Frida server
    echo "Pushing frida-server to device..."
    adb push frida-server /data/local/tmp/
    
    # Set permissions
    echo "Setting permissions..."
    adb shell "chmod 755 /data/local/tmp/frida-server"
    
    # Start Frida server and wait
    echo "Starting frida-server..."
    adb shell "/data/local/tmp/frida-server &"
    
    # Wait for server to start with timeout
    echo "Waiting for frida-server to start..."
    start_time=$(date +%s)
    while true; do
        if adb shell "ps | grep frida-server" | grep -q "frida-server"; then
            echo "frida-server started successfully!"
            break
        fi
        
        current_time=$(date +%s)
        elapsed=$((current_time - start_time))
        
        if [ $elapsed -gt $TIMEOUT ]; then
            echo "Timeout waiting for frida-server to start"
            echo "Checking frida-server logs..."
            adb shell "logcat -d | grep frida-server"
            exit 1
        fi
        
        echo "Waiting for frida-server to start... ($elapsed/$TIMEOUT seconds)"
        sleep 2
    done
fi

# Check test app
echo "Checking test app..."
if ! adb shell pm list packages | grep -q "org.mian.gitnex"; then
    echo "Installing test app..."
    adb install -r apps/org.mian.gitnex_550.apk
fi

# Start Appium server
echo "Starting Appium server..."
appium --use-drivers uiautomator2 &
APPIUM_PID=$!

# Wait for Appium server to start
echo "Waiting for Appium server to start..."
sleep 5

# Check if Appium server started successfully
if ! curl -s http://127.0.0.1:4723/status | grep -q "ready"; then
    echo "Failed to start Appium server. Please check the logs."
    kill $APPIUM_PID
    exit 1
fi

# Run tests
echo "Running tests..."
mvn clean test

# Save test results
TEST_RESULT=$?

# Stop Appium server
echo "Stopping Appium server..."
kill $APPIUM_PID

# Check test results
if [ $TEST_RESULT -eq 0 ]; then
    echo "Tests completed successfully!"
else
    echo "Tests failed!"
fi 