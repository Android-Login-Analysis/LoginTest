import os


def list_folders(directory):
    # Get all folders in the directory
    folders = [name for name in os.listdir(
        directory) if os.path.isdir(os.path.join(directory, name))]
    return folders


def write_folder_names(directory, output_file_full, output_file_last):
    folders = list_folders(directory)
    with open(output_file_full, 'w') as file_full, open(output_file_last, 'w') as file_last:
        for folder in folders:
            # Write the complete folder name
            file_full.write(folder + '\n')
            # Write the last segment of the folder name
            last_segment = folder.split('.')[-1]
            file_last.write(last_segment + '\n')


# Replace 'directory_path' with your target directory path
# Replace 'total_folders.txt' and 'last_segments.txt' with your desired output file paths
directory_path = '/Users/zixuzhou/Programs/Java/test/scripts/fdroiddata/metadata'
output_file_full = 'total_folders.txt'
output_file_last = 'last_segments.txt'

write_folder_names(directory_path, output_file_full, output_file_last)
