# Android App Automated Testing & Dynamic Analysis Project

This project is designed for automated testing and dynamic analysis of Android applications (APKs), mainly relying on [Appium](https://appium.io/) and [Frida](https://frida.re/).

## Directory Overview

- `apps/`: Store APK files to be tested
- `pools/`: Store account, password, and other batch test data
- `scripts/`: Contains automation scripts, Frida hook scripts, and data processing scripts
- `src/`: Java main program and test code

---

## Appium Automated Testing

### 1. About Appium

Appium is an open-source automation testing framework that supports automated testing of native, hybrid, and mobile web applications, compatible with both Android and iOS.

### 2. Installing Appium

#### Install Node.js (Appium depends on Node.js)

```bash
# macOS
brew install node
# Ubuntu
sudo apt-get install nodejs npm
```

#### Install Appium Server

```bash
npm install -g appium
```

#### Install Appium Client (Java)

The dependency is already added in `pom.xml`:

```xml
<dependency>
    <groupId>io.appium</groupId>
    <artifactId>java-client</artifactId>
    <version>9.3.0</version>
    <scope>test</scope>
</dependency>
```

#### Start Appium Server

```bash
appium
```

#### Connect Android Device

- Enable Developer Options and USB Debugging
- Use `adb devices` to confirm the device is connected

#### Write and Run Tests

- Write Java test code in the `src/` directory, using TestNG or JUnit for testing
- Refer to the official Appium documentation: [Appium Java Client](https://github.com/appium/java-client)

---

## Frida Dynamic Analysis

### 1. About Frida

Frida is a powerful dynamic instrumentation toolkit for developers, reverse-engineers, and security researchers. It can be used to hook, debug, and analyze applications on Android, iOS, Windows, macOS, and more.

### 2. Installing Frida

#### Install Frida Command Line Tools

```bash
pip install frida-tools
```

#### Install Frida Python Package

```bash
pip install frida
```

#### Install Frida-server on Android Device

1. [Download the appropriate frida-server](https://github.com/frida/frida/releases) for your device architecture from the Frida website
2. Push it to the device and grant execute permissions:

```bash
adb push frida-server-<arch> /data/local/tmp/
adb shell "chmod 755 /data/local/tmp/frida-server-<arch>"
```

3. Start frida-server on the device:

```bash
adb shell "/data/local/tmp/frida-server-<arch> &"
```

#### Check Frida Connection

```bash
frida-ps -U
```

### 3. Using Frida for Dynamic Analysis

- The `scripts/run_frida.py` script is used to automate hooking of a specified Android app package
- `scripts/frida.js` is the Frida hook script, where you can customize hook logic
- You can use regular expressions to batch analyze sensitive information

---

## Typical Workflow

1. Place the APK to be tested in the `apps/` directory
2. Use Appium to write automation scripts for batch operations on the app
3. Use Frida for dynamic hooking and behavioral analysis
4. Use Python scripts to process and analyze the data

---

## References

- [Appium Official Documentation](https://appium.io/docs/en/about-appium/intro/)
- [Frida Official Documentation](https://frida.re/docs/home/)

For further assistance, please refer to the official documentation of each tool or contact the project maintainer.
