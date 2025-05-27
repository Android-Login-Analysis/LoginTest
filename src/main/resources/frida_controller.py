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
    config = configparser.ConfigParser()
    config_path = os.path.join(os.path.dirname(
        __file__), 'frida_config.properties')

    if os.path.exists(config_path):
        config.read(config_path)
    else:
        logging.warning("Config file not found, using defaults")
        config['DEFAULT'] = {
            'frida.timeout': '30',
            'frida.retry.count': '3',
            'frida.retry.delay': '2'
        }

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
    script_path = os.path.join(os.path.dirname(__file__), 'login_agent.js')

    if not os.path.exists(script_path):
        logging.error(f"Script file not found: {script_path}")
        sys.exit(1)

    # Copy regex patterns to device
    if not copy_regex_patterns():
        logging.warning(
            "Failed to copy regex patterns, agent will use default patterns")

    try:
        # Load the JavaScript code
        with open(script_path, 'r') as f:
            js_code = f.read()

        # Connect to the device
        device = frida.get_usb_device()
        logging.info(f"Connected to device: {device.name}")

        # Attach to the process
        session = device.attach(package_name)
        logging.info(f"Attached to process: {package_name}")

        # Create the script
        script = session.create_script(js_code)
        script.on('message', on_message)
        script.load()
        logging.info("Script loaded successfully")

        # Keep the script running
        timeout = int(config['DEFAULT'].get('frida.timeout', '30'))
        start_time = time.time()

        while True:
            if time.time() - start_time > timeout:
                logging.warning("Script timeout reached")
                break
            time.sleep(1)

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
