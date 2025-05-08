import os
import yaml

# Define the directory where the YAML files are stored
directory_path = '/Users/zixuzhou/Programs/Java/test/scripts/fdroiddata/metadata'

# Define the path where the results will be written
output_file_path = '/Users/zixuzhou/Programs/Java/test/scripts/githubResultsofFdroid.txt'

def is_github_repo(data):
    return data.get('RepoType') == 'git' and 'github' in data.get('Repo', '')

def process_directory(directory):
    github_repos = []
    for filename in os.listdir(directory):
        if filename.endswith('.yml'):
            filepath = os.path.join(directory, filename)
            with open(filepath, 'r') as file:
                try:
                    data = yaml.safe_load(file)
                    if is_github_repo(data):
                        github_repos.append(data['Repo'])
                except yaml.YAMLError as exc:
                    print(f"Error reading {filename}: {exc}")
    return github_repos

def write_results(filepath, repos):
    with open(filepath, 'w') as file:
        for repo in repos:
            file.write(repo + '\n')

# Process the directory and write results
github_repos = process_directory(directory_path)
write_results(output_file_path, github_repos)
