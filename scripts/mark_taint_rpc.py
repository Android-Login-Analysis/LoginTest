#!/usr/bin/env python3
"""
RPC helper script to mark taint in Frida agent
Usage: python3 mark_taint_rpc.py <package_name> <taint_type> <value_length>
"""

import sys
import frida
import time

def main():
    if len(sys.argv) < 4:
        print("Usage: python3 mark_taint_rpc.py <package_name> <taint_type> <value_length>", file=sys.stderr)
        sys.exit(1)
    
    package_name = sys.argv[1]
    taint_type = sys.argv[2]
    value_length = int(sys.argv[3])
    
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
                print(f"Process {package_name} not found", file=sys.stderr)
                sys.exit(1)
        
        # Attach to process
        session = device.attach(pid)
        
        # Load a minimal script to call RPC
        script_code = """
        rpc.exports = {
            callMarkTaint: function(type, length) {
                // Generate a fake value of specified length
                const fakeValue = 'x'.repeat(length);
                // Assuming the main script exposes markTaint
                if (typeof markTaint !== 'undefined') {
                    return markTaint(fakeValue, type);
                }
                return 'ERROR: markTaint not available';
            }
        };
        """
        
        script = session.create_script(script_code)
        script.load()
        
        # Call RPC
        result = script.exports_sync.call_mark_taint(taint_type, value_length)
        print(f"Taint marked: {result}")
        
        session.detach()
        sys.exit(0)
        
    except Exception as e:
        print(f"Error marking taint: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == '__main__':
    main()
