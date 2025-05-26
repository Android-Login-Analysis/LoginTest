import frida
# frida script을 주입하고 log를 수집하는 역할을 함

def read_regex_patterns(file_path):
    with open(file_path, 'r') as file:
        return [line.strip() for line in file if line.strip()]


def on_message(message, data):
    print(message)


def main(target_package):

    #device = frida.get_remote_device()
    device = frida.get_local_device()
    pid = device.spawn([target_package])
    session = device.attach(pid)

    patterns = read_regex_patterns("regex_patterns.txt")

    with open("frida.js") as f:
        script = session.create_script(f.read())

    script.on('message', on_message)
    script.load()

    script.post({'type': 'input', 'patterns': patterns})

    device.resume(pid)
    input("Press Enter to exit...\n")


if __name__ == "__main__":
    main("com.streetwriters.notesnook")
