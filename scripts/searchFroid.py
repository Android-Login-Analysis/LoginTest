import requests
import concurrent.futures
from datetime import datetime
import time


def get_github_repo_info(query):
    """Search for a GitHub repository using the API and return the first result's name, star count, and link."""
    headers = {'Authorization': f'token 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'}
    url = f"https://api.github.com/search/repositories?q={query}"
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        if data['items']:
            repo = data['items'][0]
            return {
                'name': repo['full_name'],
                'stars': repo['stargazers_count'],
                'url': repo['html_url']
            }
    return None


def read_queries_from_file(filename):
    """Read each line from a file as a query."""
    with open(filename, 'r') as file:
        return [line.strip() for line in file.readlines()]


def process_queries(queries):
    """Process a list of queries and return a list of results."""
    results = []
    for query in queries:
        repo_info = get_github_repo_info(query)
        if repo_info:
            results.append({'query': query, **repo_info})
        else:
            results.append({'query': query, 'result': 'No result'})
        time.sleep(2)
    return results


def write_results_to_file(filename, results):
    """Write the results to a file, sorted by star count, including query, result name, star count, and URL."""
    results_sorted = sorted(
        [r for r in results if 'stars' in r], key=lambda x: x['stars'], reverse=True)
    with open(filename, 'w') as file:
        for result in results_sorted:
            file.write(
                f"{result['query']} - {result['name']} - Stars: {result['stars']} - URL: {result['url']}\n")
        for result in [r for r in results if 'result' in r]:
            file.write(f"{result['query']} - No result\n")


def main():
    queries = read_queries_from_file('last_segments.txt')
    chunk_size = len(queries) // 4
    chunks = [queries[i:i + chunk_size]
              for i in range(0, len(queries), chunk_size)]
    results = []

    with concurrent.futures.ThreadPoolExecutor() as executor:
        futures = [executor.submit(process_queries, chunk) for chunk in chunks]
        for future in concurrent.futures.as_completed(futures):
            results.extend(future.result())
            print(
                f"Processed a chunk at {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")

    write_results_to_file('output_sorted1.txt', results)
    print("All data processed and results are written to output_sorted.txt")


if __name__ == "__main__":
    main()
