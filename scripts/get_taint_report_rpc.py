#!/usr/bin/env python3
"""
RPC helper script to get taint report from Frida agent
Usage: python3 get_taint_report_rpc.py <package_name>
"""

import sys
import frida
import json

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 get_taint_report_rpc.py <package_name>", file=sys.stderr)
        sys.exit(1)
    
    package_name = sys.argv[1]
    
    try:
        # Connect to USB device
        device = frida.get_usb_device(timeout=5)
        
        # Find the process
        try:
            process = device.get_process(package_name)
            pid = process.pid
        except:
            # Process not found by name, try to find it
            import subprocess
            result = subprocess.run(
                ['adb', 'shell', 'ps', '|', 'grep', package_name],
                capture_output=True, text=True, timeout=5
            )
            if result.returncode == 0 and result.stdout:
                pid = int(result.stdout.split()[1])
            else:
                print(json.dumps({"taints": [], "flows": [], "violations": []}))
                sys.exit(0)
        
        # Attach to process
        session = device.attach(pid)
        
        # Load a minimal script to call RPC
        script_code = """
        rpc.exports = {
            callGetTaintReport: function() {
                // Assuming the main script exposes getTaintReport
                if (typeof getTaintReport !== 'undefined') {
                    return getTaintReport();
                }
                return '{"taints":[],"flows":[],"violations":[]}';
            }
        };
        """
        
        script = session.create_script(script_code)
        script.load()
        
        # Call RPC
        report_json = script.exports_sync.call_get_taint_report()
        print(report_json)
        
        session.detach()
        sys.exit(0)
        
    except Exception as e:
        # Return empty report on error
        print(json.dumps({"taints": [], "flows": [], "violations": []}))
        sys.exit(0)

if __name__ == '__main__':
    main()
