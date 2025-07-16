import random
import string

def read_existing_data(filepath):
    """Reads the existing usernames or passwords from the file."""
    try:
        with open(filepath, 'r') as file:
            return set(line.strip() for line in file.readlines())
    except FileNotFoundError:
        return set()

def generate_username(existing_usernames):
    """Generates a unique username."""
    while True:
        username = ''.join(random.choices(string.ascii_lowercase + string.digits, k=8))
        if username not in existing_usernames:
            return username

def generate_password(existing_passwords):
    """Generates a unique password with a higher proportion of special characters, excluding spaces."""
    special_characters = "!@#$%^&*()-_=+[]{}|;:',.<>/?`~"
    characters = string.ascii_letters + string.digits + special_characters

    while True:
        # Increase the probability of choosing a special character by including it more times in the pool
        password = ''.join(random.choices(
            string.ascii_letters + string.digits + special_characters * 3, k=12))

        if password not in existing_passwords:
            return password

def ensure_newline_at_end(filepath):
    """Ensure the file ends with a newline character."""
    with open(filepath, 'rb+') as file:
        file.seek(0, 2)  # Move to the end of the file
        if file.tell() == 0:  # Empty file, no need to add newline
            return
        file.seek(-1, 2)
        last_char = file.read(1)
        if last_char != b'\n':
            file.write(b'\n')

def append_to_file(filepath, data):
    """Appends the new data to the file, ensuring a newline exists at the end."""
    ensure_newline_at_end(filepath)
    with open(filepath, 'a') as file:
        file.write(data + '\n')

def main():
    # File paths
    accounts_file = '../pools/accounts.txt'
    passwords_file = '../pools/passwords.txt'

    # Read existing data
    existing_usernames = read_existing_data(accounts_file)
    existing_passwords = read_existing_data(passwords_file)

    # Input the number of new accounts and passwords to generate
    try:
        num_to_generate = int(input("Enter the number of new accounts and passwords to generate: "))
    except ValueError:
        print("Please enter a valid integer.")
        return

    for _ in range(num_to_generate):
        # Generate new username and password
        new_username = generate_username(existing_usernames)
        new_password = generate_password(existing_passwords)

        # Append new data to files
        append_to_file(accounts_file, new_username)
        append_to_file(passwords_file, new_password)

        # Add the new username and password to the sets to avoid duplication
        existing_usernames.add(new_username)
        existing_passwords.add(new_password)

        print(f"New username: {new_username}")
        print(f"New password: {new_password}")

if __name__ == "__main__":
    main()
