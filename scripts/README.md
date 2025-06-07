# F-Droid GitHub Repository Analysis Scripts

This set of scripts is designed to analyze F-Droid applications and their corresponding GitHub repositories. The scripts extract application information from F-Droid's metadata and gather statistics about their GitHub repositories.

## Scripts Overview

### 1. getFrioid.py

Extracts application names from F-Droid's metadata directory.

- Input: F-Droid metadata directory
- Output:
  - `total_folders.txt`: Complete folder names
  - `last_segments.txt`: Application names (last segment of folder names)

### 2. getGithubFromFdroid.py

Extracts GitHub repository URLs directly from F-Droid's metadata YAML files.

- Input: F-Droid metadata directory
- Output: `githubResultsofFdroid.txt` containing GitHub repository URLs

### 3. sortRepo.py

Analyzes GitHub repositories and sorts them by popularity.

- Input: `githubResultsofFdroid.txt`
- Output: `final_output_sorted.txt` containing:
  - Repository names
  - Star counts
  - Only includes repositories updated after January 1, 2023

## Workflow

1. `getFrioid.py` extracts application names from F-Droid's metadata
2. `getGithubFromFdroid.py` finds the corresponding GitHub repositories
3. `sortRepo.py` analyzes these repositories and creates a sorted list by popularity

## Requirements

- Python 3.x
- Required Python packages:
  - requests
  - yaml
  - logging

## Usage

1. Ensure you have the F-Droid metadata directory in the correct location
2. Run the scripts in sequence:

   ```bash
   python getFrioid.py
   python getGithubFromFdroid.py
   python sortRepo.py
   ```

3. Check the output files for results

## Output Format

The final output (`final_output_sorted.txt`) will contain lines in the format:

```
repository_name: number_of_stars
```

## Note

These scripts require a GitHub access token to avoid API rate limits. Make sure to replace the token in the scripts with your own GitHub access token.
