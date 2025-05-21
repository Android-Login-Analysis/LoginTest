# frida_controller.py
import frida
import sys
import time
import json  # For parsing the JSON string from Java if needed, though agent handles it


def on_message(message, data):
    """
    Callback for messages from the Frida agent.
    The agent uses console.log which is typically handled by Frida's stdio redirection.
    This on_message callback would be for explicit 'send()' calls from the agent,
    which we are not using for API logging in this setup to keep it simple.
    However, it's good to have for debugging or future extensions.
    """
    if message['type'] == 'send':
        print(f"[Agent SEND] {message['payload']}")
    elif message['type'] == 'error':
        print(f"[Agent ERROR] {message}")
    else:
        print(f"[Agent MSG] {message}")


def main(app_package_name, agent_js_path, api_regex_json_string, output_log_file):
    try:
        print(f"[PythonController] Attaching to {app_package_name}...")
        print(f"[PythonController] Agent JS path: {agent_js_path}")
        print(f"[PythonController] Output log file: {output_log_file}")
        # api_regex_patterns = json.loads(api_regex_json_string) # Agent JS will parse the JSON string directly

        # Get a USB device (can be made more specific if multiple devices)
        device = frida.get_usb_device(timeout=5)

        pid = -1
        try:
            pid = device.spawn([app_package_name])
            print(
                f"[PythonController] Spawned {app_package_name} with PID {pid}. Attaching...")
            session = device.attach(pid)
        except frida.ProcessNotFoundError:
            print(
                f"[PythonController] Process {app_package_name} not found. Trying to attach to already running process...")
            # Attach to already running app
            session = device.attach(app_package_name)
        except Exception as e:
            print(f"[PythonController] Error during spawn/attach: {e}")
            print(
                f"[PythonController] Ensure the app '{app_package_name}' is installed and can be launched, or is already running.")
            return

        print(
            f"[PythonController] Attached to {app_package_name}. Session: {session}")

        # Read the agent script
        with open(agent_js_path, 'r') as f:
            agent_code = f.read()

        # Create and load the script
        script = session.create_script(agent_code)
        print("[PythonController] Frida script created.")

        # Set up message handler (optional for console.log, but good practice)
        script.on('message', on_message)
        print("[PythonController] Message handler set.")

        script.load()
        print("[PythonController] Frida script loaded.")

        # Call the RPC export 'init'
        # The agent's init function expects (appPackageName, apiRegexPatternsJsonString)
        # The api_regex_json_string is already a JSON formatted string from Java.
        print(
            f"[PythonController] Calling RPC: script.exports.init('{app_package_name}', json_string_of_regexes)")
        # print(f"JSON String for agent: {api_regex_json_string}") # For debugging

        # It's important that api_regex_json_string is correctly formatted as a JSON array string
        # e.g., "[\"^regex1$\", \"^regex2$\"]"
        script.exports.init(app_package_name, api_regex_json_string)
        print("[PythonController] RPC 'init' called on agent.")

        # If we successfully spawned the process, resume it
        if pid != -1:
            device.resume(pid)
            print(f"[PythonController] Resumed PID {pid}.")

        print("[PythonController] Frida agent is running. API calls will be logged by the agent's console.log.")
        print("[PythonController] This Python script will now keep running to maintain the Frida session.")
        print(
            "[PythonController] Press Ctrl+C (or send SIGINT/SIGTERM) to detach and exit.")

        # Keep the script alive until interrupted
        try:
            while True:
                time.sleep(1)
        except KeyboardInterrupt:
            print("[PythonController] KeyboardInterrupt received. Detaching...")
        finally:
            print("[PythonController] Detaching from session...")
            session.detach()
            print("[PythonController] Detached. Exiting.")

    except frida.ServerNotRunningError:
        print("[PythonController] Frida server is not running on the device. Please start it (e.g., ./frida-server &).")
    except frida.TransportError as e:
        print(
            f"[PythonController] Frida transport error: {e}. Is the device connected and frida-server running?")
    except frida.InvalidArgumentError as e:
        print(f"[PythonController] Frida invalid argument error: {e}")
    except Exception as e:
        print(f"[PythonController] An unexpected error occurred: {e}")
        import traceback
        traceback.print_exc()


if __name__ == '__main__':
    if len(sys.argv) != 5:
        print("Usage: python frida_controller.py <app_package_name> <agent_js_path> <api_regex_json_string_base64_encoded> <output_log_file>")
        print("Note: api_regex_json_string should be passed base64 encoded to handle special characters in CLI.")
        sys.exit(1)

    app_package_name_arg = sys.argv[1]
    agent_js_path_arg = sys.argv[2]
    api_regex_json_base64_arg = sys.argv[3]
    # This Python script doesn't directly write to it, relies on Frida CLI for that if used.
    output_log_file_arg = sys.argv[4]
    # For this direct Python binding approach, Java will manage output redirection of THIS script if needed,
    # but the agent's console.log is handled differently by Frida itself.
    # We will actually IGNORE output_log_file_arg for this pure Python-Frida setup,
    # as the agent's console.log is typically mixed with Frida's own output.
    # The Java side's ProcessBuilder needs to capture python script's stdout for the agent's logs.

    import base64
    try:
        api_regex_json_string_arg = base64.b64decode(
            api_regex_json_base64_arg).decode('utf-8')
    except Exception as e:
        print(f"Error decoding base64 JSON string: {e}")
        sys.exit(1)

    print(
        f"[PythonController] Decoded API Regex JSON: {api_regex_json_string_arg}")

    # The output_log_file from Java is where Java *expects* the agent's console.log to go.
    # With frida-python, the agent's console.log messages will appear on the stdout of this python script.
    # So, the Java ProcessBuilder needs to redirect the stdout of *this python script* to fridaLogFilePath.
    main(app_package_name_arg, agent_js_path_arg,
         api_regex_json_string_arg, output_log_file_arg)
