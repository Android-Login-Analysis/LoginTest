#!/usr/bin/env python3
import sys
import frida
import time
import json
import os
import configparser
import logging
from datetime import datetime


def setup_logging():
    log_dir = 'logs'
    if not os.path.exists(log_dir):
        os.makedirs(log_dir)

    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(levelname)s - %(message)s',
        handlers=[
            logging.FileHandler(os.path.join(log_dir, 'frida.log')),
            logging.StreamHandler()
        ]
    )


def load_config():
    # Load Java properties file manually since configparser expects INI format
    config = {}
    config_paths = [
        os.path.join(os.path.dirname(__file__), '..', 'src', 'main', 'resources', 'config.properties'),
        os.path.join(os.path.dirname(__file__), 'frida_config.properties')  # 备用
    ]
    
    config_loaded = False
    for config_path in config_paths:
        if os.path.exists(config_path):
            try:
                # Parse Java properties file manually
                with open(config_path, 'r') as f:
                    for line in f:
                        line = line.strip()
                        if line and not line.startswith('#') and '=' in line:
                            key, value = line.split('=', 1)
                            config[key.strip()] = value.strip()
                logging.info(f"Loaded config from: {config_path}")
                config_loaded = True
                break
            except Exception as e:
                logging.error(f"Error reading config file {config_path}: {e}")
    
    if not config_loaded:
        logging.warning("No config file found, using defaults")
        config.update({
            'frida.timeout': '30',
            'frida.retry.count': '3',
            'frida.retry.delay': '2'
        })

    return config


def on_message(message, data):
    if message['type'] == 'send':
        try:
            # Try to parse the message as JSON
            payload = json.loads(message['payload'])
            logging.info(f"API Call: {json.dumps(payload, indent=2)}")
        except json.JSONDecodeError:
            # If not JSON, log as plain text
            logging.info(f"Message: {message['payload']}")
    elif message['type'] == 'error':
        logging.error(f"Error: {message['description']}")
        if 'stack' in message:
            logging.error(f"Stack: {message['stack']}")


def copy_regex_patterns():
    try:
        patterns_path = os.path.join(
            os.path.dirname(__file__), 'regex_patterns.txt')
        if not os.path.exists(patterns_path):
            logging.error(f"regex_patterns.txt not found at: {patterns_path}")
            return False

        # Copy file to device
        os.system(
            f"adb push {patterns_path} /data/local/tmp/regex_patterns.txt")
        logging.info("Copied regex_patterns.txt to device")
        return True
    except Exception as e:
        logging.error(f"Error copying regex_patterns.txt: {e}")
        return False


def main():
    setup_logging()
    config = load_config()

    if len(sys.argv) < 2:
        logging.error("Usage: python frida_controller.py <package_name>")
        sys.exit(1)

    package_name = sys.argv[1]
    script_path = os.path.join(os.path.dirname(__file__), '..', 'src', 'main', 'resources', 'login_agent.js')

    if not os.path.exists(script_path):
        logging.error(f"Script file not found: {script_path}")
        sys.exit(1)
    
    # Check Frida version compatibility
    try:
        import frida
        logging.info(f"Frida client version: {frida.__version__}")
    except Exception as e:
        logging.error(f"Failed to get Frida client version: {e}")

    script_dir = os.path.dirname(__file__)
    regex_patterns_path = os.path.join(script_dir, '..', 'src', 'main', 'resources', 'regex_patterns.txt')
    try:
        with open(regex_patterns_path, 'r') as f:
            regex_patterns = f.read()
        # Copy patterns to the agent script directory for access
        agent_regex_path = os.path.join(os.path.dirname(script_path), 'regex_patterns.txt')
        with open(agent_regex_path, 'w') as f:
            f.write(regex_patterns)
        logging.info(f"Regex patterns copied from: {regex_patterns_path}")
        logging.info(f"Regex patterns copied to: {agent_regex_path}")
    except FileNotFoundError:
        logging.error(f"regex_patterns.txt not found at: {regex_patterns_path}")
        logging.warning(
            "Failed to copy regex patterns, agent will use default patterns")

    try:
        # Load the JavaScript code and inject regex patterns
        with open(script_path, 'r') as f:
            js_code = f.read()
        
        # Load regex patterns and inject into JavaScript
        regex_patterns_path = os.path.join(script_dir, '..', 'src', 'main', 'resources', 'regex_patterns.txt')
        try:
            with open(regex_patterns_path, 'r') as f:
                regex_content = f.read()
            
            # Parse regex patterns into JavaScript object format
            patterns_js = "{"
            for line in regex_content.strip().split('\n'):
                line = line.strip()
                if line and not line.startswith('#') and ':::' in line:
                    parts = line.split(':::', 1)
                    if len(parts) == 2:
                        state_name = parts[0].strip()
                        pattern = parts[1].strip().replace('\\', '\\\\')
                        patterns_js += f'\n    "{state_name}": /{pattern}/g,'
            patterns_js = patterns_js.rstrip(',') + "\n}"
            
            # Replace the readRegexPatterns function with direct pattern injection
            logging.info("Regex patterns will be passed via RPC, no injection needed.")
            
        except Exception as e:
            logging.warning(f"Failed to load regex patterns: {e}, using default patterns")

        # Connect to Android emulator via USB with dynamic device detection
        import subprocess
        
        # Get active emulator device ID dynamically
        def get_active_device():
            try:
                result = subprocess.run(['adb', 'devices'], capture_output=True, text=True, check=True)
                for line in result.stdout.strip().split('\n')[1:]:  # Skip header
                    if 'device' in line and 'emulator-' in line:
                        device_id = line.split()[0]
                        logging.info(f"Found active emulator: {device_id}")
                        return device_id
                return None
            except subprocess.CalledProcessError as e:
                logging.error(f"Failed to get device list: {e}")
                return None
        
        device_id = get_active_device()
        if not device_id:
            raise Exception("No active Android emulator found")
        
        # Ensure root access and start Frida server automatically
        try:
            logging.info(f"Getting root access on device: {device_id}")
            subprocess.run(['adb', '-s', device_id, 'root'], check=True, capture_output=True)
            time.sleep(2)  # Wait for root to take effect
            
            logging.info("Disabling SELinux if possible")
            subprocess.run(['adb', '-s', device_id, 'shell', 'setenforce', '0'], 
                         capture_output=True, check=False)  # Don't fail if SELinux not available
            
            logging.info("Stopping any existing Frida server processes")
            subprocess.run(['adb', '-s', device_id, 'shell', 'pkill', '-f', 'frida'], 
                         capture_output=True, check=False)
            
            logging.info("Pushing Frida server binary to device")
            frida_server_path = os.path.join(script_dir, '..', 'resources', 'frida-server')
            if not os.path.exists(frida_server_path):
                raise Exception(f"Frida server binary not found: {frida_server_path}")
            
            subprocess.run(['adb', '-s', device_id, 'push', frida_server_path, '/data/local/tmp/frida-server'], 
                         check=True, capture_output=True)
            
            logging.info("Setting executable permissions on Frida server")
            subprocess.run(['adb', '-s', device_id, 'shell', 'chmod', '755', '/data/local/tmp/frida-server'], 
                         check=True, capture_output=True)
            
            logging.info("Starting Frida server in background")
            # Start Frida server in background using nohup to ensure it stays running
            subprocess.Popen(['adb', '-s', device_id, 'shell', 'nohup', '/data/local/tmp/frida-server', '>/dev/null', '2>&1', '&'], 
                           stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            
            # Wait for Frida server to start
            time.sleep(3)
            
            logging.info("Verifying Frida server is running")
            result = subprocess.run(['adb', '-s', device_id, 'shell', 'ps | grep frida'], 
                                  capture_output=True, text=True, check=False)
            if 'frida-server' in result.stdout:
                logging.info("Frida server started successfully")
            else:
                logging.warning("Frida server may not be running properly")
            
        except subprocess.CalledProcessError as e:
            logging.error(f"Failed to setup Frida server: {e}")
            raise Exception(f"Could not start Frida server on device {device_id}")
        
        try:
            subprocess.run(['adb', '-s', device_id, 'forward', 'tcp:27042', 'tcp:27042'], 
                         check=True, capture_output=True)
            logging.info(f"ADB port forwarding set up successfully for device: {device_id}")
        except subprocess.CalledProcessError as e:
            logging.warning(f"ADB port forwarding setup failed: {e}")
        
        # Connect to Android emulator - force connection to emulator not local system
        device = None
        
        # Method 1: Try TCP connection to emulator first (most reliable for Docker)
        try:
            device = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
            logging.info(f"Connected to Android emulator via TCP: {device.name}")
        except Exception as tcp_error:
            logging.warning(f"TCP connection failed: {tcp_error}")
            
            # Method 2: Enumerate devices and find Android emulator
            try:
                devices = frida.get_device_manager().enumerate_devices()
                android_device = None
                
                for dev in devices:
                    logging.info(f"Found device: {dev.name} (type: {dev.type})")
                    # Look for Android emulator device (not Local System)
                    if 'android' in dev.name.lower() or 'emulator' in dev.name.lower() or dev.type == 'usb':
                        android_device = dev
                        break
                
                if android_device:
                    device = android_device
                    logging.info(f"Connected to Android device: {device.name}")
                else:
                    # Method 3: Last resort - try to connect to any non-local device
                    for dev in devices:
                        if 'local' not in dev.name.lower():
                            device = dev
                            logging.info(f"Connected to device (fallback): {device.name}")
                            break
                            
            except Exception as enum_error:
                logging.error(f"Device enumeration failed: {enum_error}")
        
        if not device:
            raise Exception(f"Cannot find Android emulator device - ensure Frida server is running on emulator")

        # Android 29 bypass: Direct PID attachment without system_server dependency
        session = None
        
        # Method 1: Find running app process via ADB and attach by PID
        try:
            logging.info(f"Method 1: Finding {package_name} process via ADB...")
            
            # Start the app first
            subprocess.run(['adb', '-s', device_id, 'shell', 'am', 'start', '-n', 
                          f'{package_name}/org.mian.gitnex.activities.MainActivity'], 
                         capture_output=True, check=False)
            
            # Wait for app to start
            time.sleep(3)
            
            # Find the app's PID using ADB
            result = subprocess.run(['adb', '-s', device_id, 'shell', 'ps | grep ' + package_name], 
                                  capture_output=True, text=True, check=False)
            
            if result.stdout.strip():
                # Parse PID from ps output
                lines = result.stdout.strip().split('\n')
                for line in lines:
                    if package_name in line:
                        parts = line.split()
                        if len(parts) >= 2:
                            pid = int(parts[1])  # PID is usually the second column
                            logging.info(f"Found {package_name} running with PID: {pid}")
                            
                            # Attach directly by PID
                            session = device.attach(pid)
                            logging.info(f"Successfully attached to PID {pid}")
                            break
            
            if not session:
                raise Exception("Could not find running process")
                
        except Exception as pid_error:
            logging.warning(f"PID attachment failed: {pid_error}")
            
            # Method 2: Try spawn with error handling
            try:
                logging.info(f"Method 2: Attempting spawn {package_name}...")
                
                # Force stop first
                subprocess.run(['adb', '-s', device_id, 'shell', 'am', 'force-stop', package_name], 
                             capture_output=True, check=False)
                time.sleep(1)
                
                # Try to spawn (may fail on Android 29 but worth trying)
                try:
                    pid = device.spawn([package_name])
                    session = device.attach(pid)
                    device.resume(pid)
                    logging.info(f"Spawn successful: PID {pid}")
                except:
                    # If spawn fails, start via ADB and find PID again
                    subprocess.run(['adb', '-s', device_id, 'shell', 'am', 'start', '-n', 
                                  f'{package_name}/org.mian.gitnex.activities.MainActivity'], 
                                 capture_output=True, check=False)
                    time.sleep(3)
                    
                    # Get PID and attach
                    result = subprocess.run(['adb', '-s', device_id, 'shell', 'pidof ' + package_name], 
                                          capture_output=True, text=True, check=False)
                    if result.stdout.strip():
                        pid = int(result.stdout.strip())
                        session = device.attach(pid)
                        logging.info(f"Attached via pidof: PID {pid}")
                    else:
                        raise Exception("Could not get PID")
                        
            except Exception as spawn_error:
                logging.error(f"All methods failed: {spawn_error}")
                raise Exception(f"Cannot attach to {package_name}")
        
        if not session:
            raise Exception(f"Failed to establish session with {package_name}")

        # Create the script
        script = session.create_script(js_code)
        script.on('message', on_message)
        script.load()
        logging.info("Script loaded successfully")

        # Call the RPC export to initialize the agent with patterns
        patterns_dict = dict(line.split(':::', 1) for line in regex_patterns.strip().split('\n') if ':::' in line)
        script.exports.init(patterns_dict)
        logging.info("Frida agent initialized with regex patterns.")

        # Keep the script running to receive messages
        logging.info("Frida controller is now monitoring. Press Ctrl+C to exit.")
        sys.stdin.read()

    except frida.ProcessNotFoundError:
        logging.error(f"Process {package_name} not found")
        sys.exit(1)
    except frida.ServerNotRunningError:
        logging.error("Frida server is not running on the device")
        sys.exit(1)
    except Exception as e:
        logging.error(f"Error: {str(e)}")
        sys.exit(1)


if __name__ == '__main__':
    main()
