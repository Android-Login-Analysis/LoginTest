import os

def count_yml_files(directory):
    count = 0

    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.yml'):
                count += 1
    return count


directory_path = '/Users/zixuzhou/Programs/Java/test/scripts/fdroiddata/metadata/'


yml_count = count_yml_files(directory_path)
print(f"There are {yml_count} '.yml' files in the directory {directory_path}.")
