#!/bin/bash

# Set error handling
set -e

echo "Starting Docker container setup..."

# Ensure dependencies are resolved and project compiles
echo "Resolving dependencies and compiling project..."
mvn dependency:resolve-sources || echo "Warning: Could not resolve sources"
mvn dependency:purge-local-repository || echo "Warning: Could not purge local repository"
mvn clean compile test-compile

# Check if compilation was successful
if [ $? -ne 0 ]; then
    echo "Error: Maven compilation failed"
    exit 1
fi

echo "Project compiled successfully"

# Start ADB server
echo "Starting ADB server..."
adb start-server

# Connect to host Mac's running emulator
echo "Connecting to emulator..."
adb connect host.docker.internal:5555

# Give some time for connection
sleep 2

# Check if device is connected
if adb devices | grep -q "host.docker.internal:5555"; then
    echo "Successfully connected to emulator"
else
    echo "Warning: Could not connect to emulator"
fi

# Start Appium server
echo "Starting Appium server..."
appium --allow-insecure chromedriver_autodownload &

# Wait a bit for Appium to start
sleep 3

echo "All services started successfully"
echo "Container is ready for testing"

# Keep container running
tail -f /dev/null