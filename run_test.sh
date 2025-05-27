#!/bin/bash

# 检查 Python 环境
echo "Checking Python environment..."
if ! command -v python3 &> /dev/null; then
    echo "Python3 is not installed. Please install Python3 first."
    exit 1
fi

# 安装必要的 Python 包
echo "Installing required Python packages..."
pip3 install frida-tools

# 检查 adb
echo "Checking adb..."
if ! command -v adb &> /dev/null; then
    echo "adb is not installed. Please install Android SDK first."
    exit 1
fi

# 检查设备连接
echo "Checking device connection..."
if ! adb devices | grep -q "device$"; then
    echo "No device connected. Please connect a device first."
    exit 1
fi

# 检查 root 权限
echo "Checking root access..."
if ! adb shell "su -c 'whoami'" | grep -q "root"; then
    echo "Device is not rooted. Frida server requires root access."
    echo "Please root your device or use a rooted emulator."
    exit 1
fi

# 检查 Frida 服务器
echo "Checking Frida server..."
if ! adb shell "su -c 'ps | grep frida-server'" | grep -q "frida-server"; then
    echo "Starting Frida server..."
    # 使用 root 权限推送和启动 Frida 服务器
    adb push frida-server /data/local/tmp/
    adb shell "su -c 'chmod 755 /data/local/tmp/frida-server'"
    adb shell "su -c '/data/local/tmp/frida-server &'"
    sleep 2
    
    # 验证 Frida 服务器是否成功启动
    if ! adb shell "su -c 'ps | grep frida-server'" | grep -q "frida-server"; then
        echo "Failed to start Frida server. Please check the device logs."
        exit 1
    fi
fi

# 检查测试应用
echo "Checking test app..."
if ! adb shell pm list packages | grep -q "org.mian.gitnex"; then
    echo "Installing test app..."
    adb install -r apps/org.mian.gitnex_550.apk
fi

# 运行测试
echo "Running tests..."
mvn clean test

# 检查测试结果
if [ $? -eq 0 ]; then
    echo "Tests completed successfully!"
else
    echo "Tests failed!"
fi 