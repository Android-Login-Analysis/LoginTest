import requests
import time
import logging

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

# Replace with your GitHub access token
access_token = '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'

headers = {'Authorization': f'token {access_token}'}

def get_repo_info(repo_url):
    # Normalize the repository URL by removing the .git suffix if present
    if repo_url.endswith('.git'):
        repo_url = repo_url[:-4]
    # Construct the API URL for the repository
    api_url = f"https://api.github.com/repos/{'/'.join(repo_url.split('/')[-2:])}"
    # Send a GET request to the GitHub API
    response = requests.get(api_url, headers=headers)
    if response.status_code == 200:
        logging.info(f"Successfully fetched data for {api_url}")
        return response.json()
    else:
        logging.error(f"Error fetching {api_url}: {response.status_code}")
        return None

def process_repos(file_path):
    results = []
    # Read repository URLs from the specified file
    with open(file_path, 'r') as file:
        repos = file.read().splitlines()
    # Process each repository URL
    for repo in repos:
        logging.info(f"Processing repository: {repo}")
        info = get_repo_info(repo)
        if info:
            # Extract the date portion of the last push event
            last_push = info['pushed_at'][:10]
            # Check if the last push is after January 1, 2023
            if last_push >= '2023-01-01':
                results.append((info['full_name'], info['stargazers_count']))
                logging.info(f"Added {info['full_name']} with {info['stargazers_count']} stars")
        # Sleep for 2 seconds to avoid hitting GitHub API rate limits
        time.sleep(2)
    return results

def write_results(results, filename):
    # Sort results by the number of stars in descending order
    results_sorted = sorted(results, key=lambda x: x[1], reverse=True)
    # Write the sorted results to the specified file
    with open(filename, 'w') as f:
        for repo in results_sorted:
            f.write(f"{repo[0]}: {repo[1]} stars\n")
            logging.info(f"Wrote {repo[0]}: {repo[1]} stars to file")

# Path to the file containing repository URLs
file_path = '/Users/zixuzhou/Programs/Java/test/scripts/githubResultsofFdroid.txt'

# Process the repositories and write the results to an output file
repo_stars = process_repos(file_path)
write_results(repo_stars, '/Users/zixuzhou/Programs/Java/test/scripts/final_output_sorted.txt')
logging.info("Finished processing all repositories.")
