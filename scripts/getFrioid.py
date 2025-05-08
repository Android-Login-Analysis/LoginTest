import os

def list_folders(directory):
    # 获取目录中的所有文件夹
    folders = [name for name in os.listdir(directory) if os.path.isdir(os.path.join(directory, name))]
    return folders

def write_folder_names(directory, output_file_full, output_file_last):
    folders = list_folders(directory)
    with open(output_file_full, 'w') as file_full, open(output_file_last, 'w') as file_last:
        for folder in folders:
            # 写入完整的文件夹名
            file_full.write(folder + '\n')
            # 写入文件夹名的最后一段
            last_segment = folder.split('.')[-1]
            file_last.write(last_segment + '\n')

# 替换这里的'directory_path'为你的目标目录路径
# 替换这里的'total_folders.txt'和'last_segments.txt'为你想要保存的文件路径
directory_path = '/Users/zixuzhou/Programs/Java/test/scripts/fdroiddata/metadata'
output_file_full = 'total_folders.txt'
output_file_last = 'last_segments.txt'

write_folder_names(directory_path, output_file_full, output_file_last)
