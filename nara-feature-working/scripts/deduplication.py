from collections import OrderedDict

def remove_duplicates(input_file, output_file):

    lines_seen = OrderedDict()


    with open(input_file, 'r') as file:
        for line in file:
            lines_seen[line] = None


    with open(output_file, 'w') as file:
        for line in lines_seen:
            file.write(line)


input_file_path = '/Users/zixuzhou/Programs/Java/test/scripts/final_output_sorted.txt'
output_file_path = '/Users/zixuzhou/Programs/Java/test/scripts/final_output_sorted_deduplicated.txt'


remove_duplicates(input_file_path, output_file_path)
