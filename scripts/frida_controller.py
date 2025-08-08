#!/usr/bin/env python3
import sys
import frida
import time
import json
import os
import configparser
import logging
from datetime import datetime
import subprocess


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


def setup_api_logging():
    """Setup API call logging to the file expected by Java application"""
    # Write runtime API logs under project-level logs directory
    api_log_dir = os.path.join(os.path.dirname(__file__), '..', 'logs')
    if not os.path.exists(api_log_dir):
        os.makedirs(api_log_dir)
    
    api_log_file = os.path.join(api_log_dir, 'frida_api_log.txt')
    
    # Create empty API log file if it doesn't exist
    if not os.path.exists(api_log_file):
        with open(api_log_file, 'w') as f:
            f.write("# Frida API Call Log\n")
            f.write("# Format: TIMESTAMP ::: CLASS_NAME.METHOD_NAME\n")
    
    return api_log_file


def log_api_call(api_log_file, payload):
    """Log API call to the file expected by Java application"""
    try:
        timestamp = payload.get('timestamp', int(time.time() * 1000))
        class_name = payload.get('class', 'Unknown')
        method_name = payload.get('method', 'Unknown')
        # Use 'state' from agent payload to align with Java analyzer expectations
        pattern = payload.get('state', 'Unknown')
        
        with open(api_log_file, 'a') as f:
            # Java ApiLogAnalyzer expects: "([0-9]+) *::: *([^.]+).([^ ]+)"
            # Only write the expected format to ensure parsing works
            f.write(f"{timestamp} ::: {class_name}.{method_name}\n")
    except Exception as e:
        logging.error(f"Failed to log API call: {e}")


def load_config():
    # Load Java properties file manually since configparser expects INI format
    config = {}
    config_paths = [
        os.path.join(os.path.dirname(__file__), '..', 'src', 'main', 'resources', 'config.properties'),
        os.path.join(os.path.dirname(__file__), 'frida_config.properties')  # backup
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

def get_static_analysis_result_path_from_config(config: dict) -> str:
    """Derive deterministic static analysis result path from APK path in config.
    apps/foo/MyApp.apk -> reports/static_analysis/MyApp.json
    """
    try:
        apk_path = config.get('app.path') or config.get('apk.path')
        if not apk_path:
            return None
        name = os.path.basename(apk_path)
        base, _ = os.path.splitext(name)
        out_dir = os.path.join(os.path.dirname(__file__), '..', 'reports', 'static_analysis')
        if not os.path.exists(out_dir):
            os.makedirs(out_dir)
        return os.path.normpath(os.path.join(out_dir, base + '.json'))
    except Exception:
        return None


def on_message(message, data):
    if message['type'] == 'send':
        try:
            # Check if payload is already a dict or needs parsing
            if isinstance(message['payload'], dict):
                payload = message['payload']
            else:
                # Try to parse the message as JSON
                payload = json.loads(message['payload'])
            
            if payload.get('type') == 'api_call':
                logging.info(f"API Call #{payload.get('callId', 'N/A')}: {payload.get('class', 'Unknown')}.{payload.get('method', 'Unknown')} (Pattern: {payload.get('pattern', 'Unknown')})")
                # Log to API log file
                log_api_call(api_log_file, payload)
            elif payload.get('type') == 'statistics':
                logging.info(f"Statistics: {payload.get('matchedClasses', 0)} classes, {payload.get('hookedMethods', 0)} methods, {payload.get('apiCallCount', 0)} API calls")
            elif payload.get('type') == 'periodic_stats':
                logging.info(f"Periodic Stats: {payload.get('apiCallCount', 0)} total calls, {payload.get('matchedApiCallCount', 0)} matched calls")
            else:
                logging.info(f"Message: {json.dumps(payload, indent=2)}")
        except json.JSONDecodeError:
            # If not JSON, log as plain text
            logging.info(f"Message: {message['payload']}")
        except Exception as e:
            logging.error(f"Error processing message: {e}")
            logging.info(f"Raw message: {message['payload']}")
    elif message['type'] == 'error':
        logging.error(f"Error: {message['description']}")
        if 'stack' in message:
            logging.error(f"Stack: {message['stack']}")


def main():
    setup_logging()
    config = load_config()
    
    # Setup API logging
    global api_log_file
    api_log_file = setup_api_logging()
    logging.info(f"API log file: {api_log_file}")

    if len(sys.argv) < 2:
        logging.error("Usage: python frida_controller.py <package_name> [script_path]")
        sys.exit(1)

    package_name = sys.argv[1]
    
    # 确定要使用的脚本路径
    if len(sys.argv) >= 3:
        script_path = sys.argv[2]
        logging.info(f"Using custom script: {script_path}")
    else:
        script_path = os.path.join(os.path.dirname(__file__), '..', 'src', 'main', 'resources', 'login_agent.js')
        logging.info(f"Using default script: {script_path}")

    if not os.path.exists(script_path):
        logging.error(f"Script file not found: {script_path}")
        sys.exit(1)
    
    # 检查Frida版本兼容性
    try:
        import frida
        logging.info(f"Frida client version: {frida.__version__}")
    except Exception as e:
        logging.error(f"Failed to get Frida client version: {e}")

    # 尝试加载静态分析结果
    analysis_result = None
    if script_path.endswith('_frida_script.js'):
        # 这是生成的脚本，尝试加载对应的分析结果
        analysis_result_path = script_path.replace('_frida_script.js', '_analysis.json')
        if os.path.exists(analysis_result_path):
            try:
                with open(analysis_result_path, 'r') as f:
                    analysis_result = json.load(f)
                logging.info(f"Loaded static analysis result: {analysis_result_path}")
                logging.info(f"Analysis contains {len(analysis_result.get('matches', {}))} state matches")
            except Exception as e:
                logging.warning(f"Failed to load static analysis result: {e}")
    
    # 如果没有静态分析结果，使用正则表达式模式
    if analysis_result is None:
        script_dir = os.path.dirname(__file__)
        regex_patterns_path = os.path.join(script_dir, '..', 'src', 'main', 'resources', 'regex_patterns.txt')
        
        # Initialize patterns_dict
        patterns_dict = {}
        
        try:
            with open(regex_patterns_path, 'r') as f:
                regex_patterns = f.read()
            # Copy patterns to the agent script directory for access
            agent_regex_path = os.path.join(os.path.dirname(script_path), 'regex_patterns.txt')
            with open(agent_regex_path, 'w') as f:
                f.write(regex_patterns)
            logging.info(f"Regex patterns copied from: {regex_patterns_path}")
            logging.info(f"Regex patterns copied to: {agent_regex_path}")
            
            # Parse regex patterns into dict format
            for line in regex_patterns.strip().split('\n'):
                line = line.strip()
                if line and not line.startswith('#') and ':::' in line:
                    parts = line.split(':::', 1)
                    if len(parts) == 2:
                        state_name = parts[0].strip()
                        pattern = parts[1].strip()
                        patterns_dict[state_name] = pattern
            logging.info(f"Loaded {len(patterns_dict)} patterns from file")
            
        except FileNotFoundError:
            logging.error(f"regex_patterns.txt not found at: {regex_patterns_path}")
            logging.warning("Failed to copy regex patterns, agent will use default patterns")
        except Exception as e:
            logging.warning(f"Failed to load regex patterns: {e}, using default patterns")
    else:
        # 使用静态分析结果
        patterns_dict = analysis_result.get('detailedMethods', {})
        logging.info(f"Using static analysis result with {len(patterns_dict)} states")

    try:
        # Load the JavaScript code
        with open(script_path, 'r') as f:
            js_code = f.read()
    except Exception as e:
        logging.error(f"Failed to load script: {e}")
        sys.exit(1)

    try:
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
        
        # Enumerate devices and find Android emulator
        try:
            devices = frida.get_device_manager().enumerate_devices()
            android_device = None
            
            for dev in devices:
                logging.info(f"Found device: {dev.name} (type: {dev.type})")
                if dev.type != 'local':
                    android_device = dev
                    break
            
            if android_device:
                device = android_device
                logging.info(f"Connected to device: {device.name}")
            else:
                raise Exception("No non-local device found")
                        
        except Exception as enum_error:
            logging.error(f"Device enumeration failed: {enum_error}")
        
        if not device:
            raise Exception(f"Cannot find Android emulator device - ensure Frida server is running on emulator")

        # Use direct PID attachment to bypass Android 29 system_server restrictions
        session = None
        
        # Assume the app is already running
        logging.info(f"Assuming {package_name} is already running")
        
        # Method 1: Find app process via ADB and attach directly to PID
        try:
            logging.info(f"Method 1: Finding {package_name} process via ADB...")
            
            # Use ps command to find the process
            result = subprocess.run(['adb', '-s', device_id, 'shell', 'ps -A | grep ' + package_name], 
                                   capture_output=True, text=True, check=False)
            
            if result.stdout.strip():
                # Parse PID
                lines = result.stdout.strip().split('\n')
                for line in lines:
                    if package_name in line and 'grep' not in line:
                        parts = line.split()
                        if len(parts) >= 2:
                            try:
                                pid = int(parts[1])  # PID is usually in the second column
                                logging.info(f"Found {package_name} running with PID: {pid}")
                                
                                # Directly attach to PID
                                session = device.attach(pid)
                                logging.info(f"Successfully attached to PID {pid}")
                                break
                            except ValueError:
                                continue
            
            # If the above method fails, try using pidof
            if not session:
                result = subprocess.run(['adb', '-s', device_id, 'shell', 'pidof ' + package_name], 
                                      capture_output=True, text=True, check=False)
                if result.stdout.strip():
                    pid = int(result.stdout.strip())
                    session = device.attach(pid)
                    logging.info(f"Successfully attached via pidof: PID {pid}")
                else:
                    raise Exception("Could not find running process")
                
        except Exception as pid_error:
            logging.warning(f"PID attachment failed: {pid_error}")
            
            # Method 2: Try using spawn method
            try:
                logging.info(f"Method 2: Trying to spawn {package_name}...")
                
                # First force stop the application
                subprocess.run(['adb', '-s', device_id, 'shell', 'am', 'force-stop', package_name], 
                             capture_output=True, check=False)
                time.sleep(1)
                
                # Try to spawn
                pid = device.spawn([package_name])
                session = device.attach(pid)
                device.resume(pid)
                logging.info(f"Spawn successful: PID {pid}")
                
            except Exception as spawn_error:
                logging.error(f"All attachment methods failed: {spawn_error}")
                raise Exception(f"Cannot attach to {package_name}")
        
        # Ensure we have a valid session
        if not session:
            raise Exception(f"Cannot establish session with {package_name}")

        # Create the script
        script = session.create_script(js_code)
        script.on('message', on_message)
        script.load()
        logging.info("Script loaded successfully")

        # Wait a moment for script to initialize
        time.sleep(2)

        # Call the RPC export to initialize the agent with patterns
        try:
            # Use the modern sync method
            if analysis_result is not None:
                # Pass parsed static analysis JSON to agent (no file I/O in agent)
                script.exports_sync.init(analysis_result)
                logging.info("Frida agent initialized with static analysis result.")
                logging.info("FRIDA_READY_STATIC")
            elif script_path.endswith('static_analysis_agent.js'):
                # Load analysis file here and pass the parsed object to agent
                analysis_result_path = None
                if len(sys.argv) >= 4:
                    analysis_result_path = sys.argv[3]
                else:
                    analysis_result_path = get_static_analysis_result_path_from_config(config)
                
                if analysis_result_path and os.path.exists(analysis_result_path):
                    with open(analysis_result_path, 'r') as f:
                        analysis_obj = json.load(f)
                    script.exports_sync.init(analysis_obj)
                    logging.info(f"Frida agent initialized with static analysis result: {analysis_result_path}")
                    logging.info("FRIDA_READY_STATIC")
                else:
                    logging.error("Static analysis result file not found")
                    raise Exception("Static analysis result file not found")
            else:
                # Pass regex patterns to script
                script.exports_sync.init(patterns_dict)
                logging.info("Frida agent initialized with regex patterns.")
                logging.info("FRIDA_READY")
        except Exception as e:
            logging.error(f"Failed to initialize agent: {e}")
            # Try alternative method with async
            try:
                if analysis_result is not None:
                    script.exports.init(analysis_result)
                    logging.info("Frida agent initialized with static analysis result (async method).")
                elif script_path.endswith('static_analysis_agent.js'):
                    if analysis_result_path and os.path.exists(analysis_result_path):
                        with open(analysis_result_path, 'r') as f:
                            analysis_obj = json.load(f)
                        script.exports.init(analysis_obj)
                        logging.info(f"Frida agent initialized with static analysis result (async method): {analysis_result_path}")
                    else:
                        raise Exception("Static analysis result file not found")
                else:
                    script.exports.init(patterns_dict)
                    logging.info("Frida agent initialized with regex patterns (async method).")
            except Exception as e2:
                logging.error(f"Failed to initialize agent with async method: {e2}")
                # Try one more time with a delay
                time.sleep(1)
                try:
                    if analysis_result is not None:
                        script.exports_sync.init(analysis_result)
                        logging.info("Frida agent initialized with static analysis result (retry sync method).")
                    elif script_path.endswith('static_analysis_agent.js'):
                        if analysis_result_path and os.path.exists(analysis_result_path):
                            with open(analysis_result_path, 'r') as f:
                                analysis_obj = json.load(f)
                            script.exports_sync.init(analysis_obj)
                            logging.info(f"Frida agent initialized with static analysis result (retry sync method): {analysis_result_path}")
                        else:
                            raise Exception("Static analysis result file not found")
                    else:
                        script.exports_sync.init(patterns_dict)
                        logging.info("Frida agent initialized with regex patterns (retry sync method).")
                except Exception as e3:
                    logging.error(f"All initialization methods failed: {e3}")
                    raise e3

        # Keep the script running to receive messages
        logging.info("Frida controller is now monitoring. Press Ctrl+C to exit.")
        
        # Set up periodic health checks
        last_stats_time = time.time()
        consecutive_failures = 0
        max_consecutive_failures = 5
        
        while True:
            try:
                # Check if script is still alive
                stats = script.exports_sync.getstats()
                logging.info(f"Agent health check: {stats}")
                consecutive_failures = 0  # Reset failure counter on success
                
                # Sleep for a while
                time.sleep(30)
                
            except KeyboardInterrupt:
                logging.info("Monitoring stopped by user.")
                break
            except Exception as e:
                consecutive_failures += 1
                logging.error(f"Health check failed ({consecutive_failures}/{max_consecutive_failures}): {e}")
                
                if consecutive_failures >= max_consecutive_failures:
                    logging.error("Too many consecutive failures, restarting Frida script...")
                    try:
                        # Try to reload the script
                        script.unload()
                        time.sleep(2)
                        script = session.create_script(js_code)
                        script.on('message', on_message)
                        script.load()
                        time.sleep(5)
                        
                        # Re-initialize with patterns
                        try:
                            script.exports_sync.init(patterns_dict)
                            logging.info("Frida script reloaded successfully")
                            consecutive_failures = 0
                        except Exception as init_error:
                            logging.error(f"Failed to reinitialize script: {init_error}")
                            break
                    except Exception as reload_error:
                        logging.error(f"Failed to reload script: {reload_error}")
                        break
                else:
                    time.sleep(10)

    except frida.ProcessNotFoundError:
        logging.error(f"Process '{package_name}' not found. Is the app installed?")
        sys.exit(1)
    except frida.ServerNotRunningError:
        logging.error("Frida server is not running on the device. Please run 'adb shell /data/local/tmp/frida-server &'")
        sys.exit(1)
    except frida.TransportError:
        logging.error("Failed to communicate with the Frida server. Check connection.")
        sys.exit(1)
    except KeyboardInterrupt:
        logging.info("Monitoring stopped by user.")
        sys.exit(0)
    except Exception as e:
        logging.error(f"An unexpected error occurred: {e}")
        import traceback
        logging.error(traceback.format_exc())
        sys.exit(1)
    finally:
        # Sleep briefly to allow any pending messages to be processed
        time.sleep(2)
        logging.info("Frida controller exiting cleanly.")
        # Exit with success code to avoid Java side retrying unnecessarily
        sys.exit(0)

if __name__ == '__main__':
    main()
