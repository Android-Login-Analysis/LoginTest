#!/usr/bin/env python3
"""
Frida Controller Script for Login Testing
This script establishes an RPC connection to a running Frida session
and calls the init() function of the login_agent.js script.
"""

import sys
import time
import frida
import json


def on_message(message, data):
    """Callback for messages from the JavaScript agent"""
    if message['type'] == 'send':
        print("[*] Message from Frida agent:", message['payload'])
    elif message['type'] == 'error':
        print("[!] Error from Frida agent:", message['stack'])


def main():
    """Main function to establish RPC connection and send init command"""
    if len(sys.argv) < 3:
        print(
            "Usage: python frida_controller.py <app_package_name> <api_regex_patterns_json>")
        return 1

    app_package_name = sys.argv[1]
    api_regex_patterns_json = sys.argv[2]

    print(f"[*] Targeting app: {app_package_name}")
    print(
        f"[*] Using pattern count: {len(json.loads(api_regex_patterns_json))}")

    try:
        # Connect to the USB device
        device = frida.get_usb_device()

        # Attach to the process (it should already be running by now)
        session = device.attach(app_package_name)
        print(f"[*] Attached to {app_package_name}")

        # Wait for the script to load completely
        time.sleep(1)

        # Get all scripts (find the login_agent.js)
        scripts = session.enumerate_scripts()
        target_script = None

        for script in scripts:
            if 'login_agent.js' in script.name:
                target_script = script
                print(f"[*] Found login_agent.js script: {script.name}")
                break

        if target_script is None:
            print("[!] login_agent.js script not found. Creating new script instance.")
            # If script not found, create it
            with open("login_agent.js", "r") as f:
                script_source = f.read()
            target_script = session.create_script(script_source)
            target_script.on('message', on_message)
            target_script.load()

        # Call the init function with package name and regex patterns
        print("[*] Calling init() function in login_agent.js")
        target_script.exports.init(app_package_name, api_regex_patterns_json)

        print("[*] RPC call complete. Agent should be initializing.")
        time.sleep(1)  # Give time for any final messages

        return 0

    except frida.InvalidArgumentError:
        print(
            f"[!] Error: Could not find process with name {app_package_name}")
        return 2
    except frida.ServerNotRunningError:
        print("[!] Error: Frida server not running on the device")
        return 3
    except Exception as e:
        print(f"[!] Unexpected error: {str(e)}")
        return 4


if __name__ == "__main__":
    sys.exit(main())
