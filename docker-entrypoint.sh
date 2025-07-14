#!/bin/bash

# Start ADB server
adb start-server

# Launch Android emulator (ARM64 native, no Rosetta needed)
${ANDROID_HOME}/emulator/emulator -avd test_device \
    -no-window \
    -no-audio \
    -no-boot-anim \
    -gpu swiftshader_indirect \
    -no-snapshot \
    -wipe-data \
    -memory 2048 &

# Wait for emulator to start
echo "Waiting for emulator to start..."
timeout=180
while ! adb devices | grep -q "emulator-5554"; do
    if [ $timeout -le 0 ]; then
        echo "Timeout waiting for emulator"
        exit 1
    fi
    sleep 1
    timeout=$((timeout-1))
done

# Start Appium server
appium --allow-insecure chromedriver_autodownload &

# Keep container running
tail -f /dev/null 