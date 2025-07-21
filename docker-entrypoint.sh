#!/bin/bash

# Start ADB server
adb start-server

# Check if emulator is available
if [ ! -f "${ANDROID_HOME}/emulator/emulator" ]; then
    echo "ERROR: Emulator not found at ${ANDROID_HOME}/emulator/emulator"
    exit 1
fi

# Check if AVD exists
if ! ${ANDROID_HOME}/cmdline-tools/latest/bin/avdmanager list avd | grep -q "test_device"; then
    echo "ERROR: AVD test_device not found"
    ${ANDROID_HOME}/cmdline-tools/latest/bin/avdmanager list avd
    exit 1
fi

# Launch Android emulator with minimal stable settings
echo "Starting Android emulator..."
${ANDROID_HOME}/emulator/emulator -avd test_device \
    -no-window \
    -no-audio \
    -no-boot-anim \
    -gpu off \
    -accel off \
    -no-snapshot-save \
    -no-snapshot-load \
    -wipe-data \
    -memory 1024 \
    -partition-size 2048 \
    -verbose &

EMULATOR_PID=$!

# Wait for emulator to start
echo "Waiting for emulator to start..."
timeout=300
counter=0
while ! adb devices | grep -q "emulator-5554.*device"; do
    if [ $counter -ge $timeout ]; then
        echo "Timeout waiting for emulator (${timeout}s)"
        echo "Emulator process status:"
        ps aux | grep emulator
        echo "ADB devices:"
        adb devices
        kill $EMULATOR_PID 2>/dev/null
        exit 1
    fi
    
    # Check if emulator process is still running
    if ! kill -0 $EMULATOR_PID 2>/dev/null; then
        echo "ERROR: Emulator process died"
        echo "Trying to start with even more conservative settings..."
        
        # Try with x86 instead of x86_64 if available
        ${ANDROID_HOME}/emulator/emulator -avd test_device \
            -no-window \
            -no-audio \
            -no-boot-anim \
            -gpu off \
            -accel off \
            -no-snapshot \
            -wipe-data \
            -memory 512 \
            -no-skin &
        EMULATOR_PID=$!
    fi
    
    sleep 2
    counter=$((counter+2))
    echo "Waiting... (${counter}/${timeout}s)"
done

echo "Emulator started successfully!"
adb devices

# Wait a bit more for system to be ready
echo "Waiting for Android system to be ready..."
sleep 30

# Start Appium server
echo "Starting Appium server..."
appium --allow-insecure chromedriver_autodownload &

# Wait for Appium to start
sleep 10

echo "Testing environment is ready!"
echo "ADB devices:"
adb devices
echo "Appium status:"
curl -s http://localhost:4723/wd/hub/status || echo "Appium not responding yet"

# Keep container running
tail -f /dev/null 