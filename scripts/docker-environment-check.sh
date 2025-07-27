#!/bin/bash
set -e
echo "=== Docker Environment Check for AndroidLoginDetector ==="
echo "Timestamp: $(date)"
echo

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

check_command() {
    local cmd=$1
    local name=$2
    
    if command -v $cmd &> /dev/null; then
        local version=$($cmd --version 2>/dev/null || $cmd -version 2>/dev/null || echo "version unknown")
        echo -e "${GREEN}✓${NC} $name: $version"
        return 0
    else
        echo -e "${RED}✗${NC} $name: not found"
        return 1
    fi
}

check_file() {
    local file=$1
    local name=$2
    
    if [ -f "$file" ]; then
        echo -e "${GREEN}✓${NC} $name: $file"
        return 0
    else
        echo -e "${RED}✗${NC} $name: $file (missing)"
        return 1
    fi
}

check_directory() {
    local dir=$1
    local name=$2
    
    if [ -d "$dir" ]; then
        echo -e "${GREEN}✓${NC} $name: $dir"
        return 0
    else
        echo -e "${RED}✗${NC} $name: $dir (missing)"
        return 1
    fi
}

echo "=== System Commands ==="
adb_ok=false
frida_ok=false
java_ok=false
mvn_ok=false

if check_command "adb" "ADB"; then
    adb_ok=true
fi

if check_command "frida" "Frida"; then
    frida_ok=true
fi

if check_command "java" "Java"; then
    java_ok=true
fi

if check_command "mvn" "Maven"; then
    mvn_ok=true
fi

echo

echo "=== ADB Device Connection ==="
if [ "$adb_ok" = true ]; then
    devices=$(adb devices | grep -v "List of devices" | grep "device$" | wc -l)
    if [ $devices -gt 0 ]; then
        echo -e "${GREEN}✓${NC} ADB devices connected: $devices"
        adb devices | grep -v "List of devices"
    else
        echo -e "${YELLOW}⚠${NC} No ADB devices connected"
        echo "Available devices:"
        adb devices
    fi
else
    echo -e "${RED}✗${NC} ADB not available"
fi

echo

echo "=== Emulator Status ==="
if [ "$adb_ok" = true ]; then
    if adb shell getprop ro.build.version.release &>/dev/null; then
        android_version=$(adb shell getprop ro.build.version.release)
        echo -e "${GREEN}✓${NC} Android version: $android_version"
        
        # 检查模拟器快照
        if adb emu avd snapshot list &>/dev/null; then
            echo -e "${GREEN}✓${NC} Emulator snapshot support available"
        else
            echo -e "${YELLOW}⚠${NC} Emulator snapshot support not available"
        fi
    else
        echo -e "${RED}✗${NC} Cannot connect to emulator"
    fi
else
    echo -e "${RED}✗${NC} ADB not available for emulator check"
fi

echo

echo "=== Frida Server Status ==="
if [ "$frida_ok" = true ]; then
    if adb shell ps | grep frida-server &>/dev/null; then
        echo -e "${GREEN}✓${NC} Frida server running on device"
    else
        echo -e "${YELLOW}⚠${NC} Frida server not running on device"
        echo "Attempting to start Frida server..."
        if [ -f "resources/frida-server" ]; then
            adb push resources/frida-server /data/local/tmp/
            adb shell "chmod 755 /data/local/tmp/frida-server"
            adb shell "/data/local/tmp/frida-server &" &
            sleep 2
            if adb shell ps | grep frida-server &>/dev/null; then
                echo -e "${GREEN}✓${NC} Frida server started successfully"
            else
                echo -e "${RED}✗${NC} Failed to start Frida server"
            fi
        else
            echo -e "${RED}✗${NC} Frida server binary not found"
        fi
    fi
else
    echo -e "${RED}✗${NC} Frida not available"
fi

echo

echo "=== Project Files ==="
files_ok=true

check_file "src/main/resources/regex_patterns.txt" "Regex patterns"
if [ $? -ne 0 ]; then files_ok=false; fi

check_file "src/main/resources/login_agent.js" "Frida agent"
if [ $? -ne 0 ]; then files_ok=false; fi

check_file "scripts/frida_controller.py" "Frida controller"
if [ $? -ne 0 ]; then files_ok=false; fi

check_file "resources/frida-server" "Frida server binary"
if [ $? -ne 0 ]; then files_ok=false; fi

check_file "src/main/resources/config.properties" "Configuration"
if [ $? -ne 0 ]; then files_ok=false; fi

echo

echo "=== Credential Pools ==="
pools_ok=true

for pool in pools/accounts.txt pools/passwords.txt pools/google_accounts.txt pools/google_passwords.txt; do
    if [ -f "$pool" ]; then
        count=$(wc -l < "$pool")
        echo -e "${GREEN}✓${NC} $pool: $count entries"
    else
        echo -e "${RED}✗${NC} $pool: missing"
        pools_ok=false
    fi
done

echo

echo "=== Java Compilation ==="
if [ "$java_ok" = true ] && [ "$mvn_ok" = true ]; then
    if [ -d "target/classes" ]; then
        echo -e "${GREEN}✓${NC} Java classes already compiled"
    else
        echo -e "${YELLOW}⚠${NC} Java classes not compiled, attempting compilation..."
        if mvn clean compile; then
            echo -e "${GREEN}✓${NC} Java compilation successful"
        else
            echo -e "${RED}✗${NC} Java compilation failed"
        fi
    fi
else
    echo -e "${RED}✗${NC} Java or Maven not available"
fi

echo

echo "=== Network Connectivity ==="
if ping -c 1 google.com &>/dev/null; then
    echo -e "${GREEN}✓${NC} Internet connectivity available"
else
    echo -e "${YELLOW}⚠${NC} No internet connectivity"
fi

echo

echo "=== Environment Check Summary ==="
echo "ADB: $([ "$adb_ok" = true ] && echo "OK" || echo "FAILED")"
echo "Frida: $([ "$frida_ok" = true ] && echo "OK" || echo "FAILED")"
echo "Java: $([ "$java_ok" = true ] && echo "OK" || echo "FAILED")"
echo "Maven: $([ "$mvn_ok" = true ] && echo "OK" || echo "FAILED")"
echo "Project files: $([ "$files_ok" = true ] && echo "OK" || echo "FAILED")"
echo "Credential pools: $([ "$pools_ok" = true ] && echo "OK" || echo "FAILED")"

echo
echo "=== Recommendations ==="
if [ "$adb_ok" = false ]; then
    echo -e "${RED}•${NC} Install Android SDK and add adb to PATH"
fi

if [ "$frida_ok" = false ]; then
    echo -e "${RED}•${NC} Install Frida: pip install frida-tools"
fi

if [ "$java_ok" = false ]; then
    echo -e "${RED}•${NC} Install Java 11 or later"
fi

if [ "$mvn_ok" = false ]; then
    echo -e "${RED}•${NC} Install Maven"
fi

if [ "$files_ok" = false ]; then
    echo -e "${RED}•${NC} Ensure all required project files are present"
fi

if [ "$pools_ok" = false ]; then
    echo -e "${RED}•${NC} Populate credential pools with test data"
fi

echo
echo "Environment check completed at: $(date)" 