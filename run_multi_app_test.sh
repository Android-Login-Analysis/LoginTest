#!/bin/bash
# Multi-Application Bug Detection Test
# Tests multiple Android apps and collects bug reports

set -e

# Configuration
CONTAINER_NAME="logintest-android-login-detector-1"
CONFIG_FILE="/app/src/main/resources/config.properties"
ROUNDS_PER_APP=3
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
SUMMARY_DIR="/app/reports/multi_app_summary_${TIMESTAMP}"

# Application configurations
declare -A APPS=(
    ["newsblur"]="com.newsblur_240.apk|com.newsblur|com.newsblur.activity.Main|snap_newsblur_login"
    ["gitnex"]="org.mian.gitnex_550.apk|org.mian.gitnex|org.mian.gitnex.activities.MainActivity|snap_gitnex_login"
    ["kickstarter"]="Kickstarter_3.24.1_apkcombo.com.apk|com.kickstarter.kickstarter|com.kickstarter.ui.activities.DiscoveryActivity|snap_kickstarter_login"
    ["libretube"]="com.github.libretube_62.apk|com.github.libretube|com.github.libretube.activities.MainActivity|snap_libretube_login"
)

echo "=========================================="
echo "Multi-Application Bug Detection Test"
echo "=========================================="
echo "Testing ${#APPS[@]} applications with ${ROUNDS_PER_APP} rounds each"
echo "Start time: $(date)"
echo "Summary directory: ${SUMMARY_DIR}"
echo ""

# Function to update config for specific app
update_config() {
    local app_name=$1
    local app_config=$2
    
    IFS='|' read -r apk_path package activity snapshot <<< "$app_config"
    
    echo "Updating config for: $app_name"
    docker exec $CONTAINER_NAME sed -i "s|^app.path=.*|app.path=apps/${apk_path}|" $CONFIG_FILE
    docker exec $CONTAINER_NAME sed -i "s|^app.package=.*|app.package=${package}|" $CONFIG_FILE
    docker exec $CONTAINER_NAME sed -i "s|^app.activity=.*|app.activity=${activity}|" $CONFIG_FILE
    docker exec $CONTAINER_NAME sed -i "s|^emulator.snapshot=.*|emulator.snapshot=${snapshot}|" $CONFIG_FILE
    docker exec $CONTAINER_NAME sed -i "s|^test.rounds=.*|test.rounds=${ROUNDS_PER_APP}|" $CONFIG_FILE
}

# Function to run test for an app
run_test() {
    local app_name=$1
    
    echo "----------------------------------------"
    echo "Testing: $app_name"
    echo "----------------------------------------"
    
    # Recompile and restart
    echo "[1/3] Recompiling..."
    docker exec $CONTAINER_NAME bash -c "cd /app && mvn clean compile -DskipTests -q"
    
    echo "[2/3] Restarting container..."
    docker compose -f /storage/home/zzhou66/Android/LoginTest/docker-compose.yml restart > /dev/null 2>&1
    
    # Wait for container to be ready
    sleep 15
    
    echo "[3/3] Running test (${ROUNDS_PER_APP} rounds)..."
    
    # Wait for test to complete (estimate: 5 minutes per round)
    local wait_time=$((ROUNDS_PER_APP * 300 + 120))
    echo "Estimated wait time: $((wait_time / 60)) minutes"
    
    sleep $wait_time
    
    echo "✓ Test completed for $app_name"
    echo ""
}

# Main test execution
for app_name in "${!APPS[@]}"; do
    echo "=================================================="
    echo "Starting test for: $app_name"
    echo "=================================================="
    
    # Update configuration
    update_config "$app_name" "${APPS[$app_name]}"
    
    # Run test
    run_test "$app_name"
    
    # Collect bug reports for this app
    docker exec $CONTAINER_NAME mkdir -p "${SUMMARY_DIR}/${app_name}"
    docker exec $CONTAINER_NAME bash -c "cp /app/reports/bugs/bugs_round_* ${SUMMARY_DIR}/${app_name}/ 2>/dev/null || echo 'No bug reports found'"
    
    echo "✓ Bug reports collected for $app_name"
    echo ""
done

echo "=========================================="
echo "All tests completed!"
echo "Generating summary report..."
echo "=========================================="

# Create summary script inside container
docker exec $CONTAINER_NAME bash -c "cat > /app/generate_summary.py << 'PYEOF'
#!/usr/bin/env python3
import os
import json
import re
from collections import defaultdict
from pathlib import Path

def parse_bug_report(file_path):
    \"\"\"Parse a bug report file and extract bug information\"\"\"
    bugs = []
    
    with open(file_path, 'r') as f:
        content = f.read()
    
    # Extract bug sections
    bug_pattern = r'BUG DETECTED.*?Category: (.*?)\nType: (.*?)\nSeverity: (.*?)\n\nDescription:\n  (.*?)\n'
    matches = re.findall(bug_pattern, content, re.DOTALL)
    
    for match in matches:
        bug = {
            'category': match[0].strip(),
            'type': match[1].strip(),
            'severity': match[2].strip(),
            'description': match[3].strip()
        }
        bugs.append(bug)
    
    return bugs

def deduplicate_bugs(bugs):
    \"\"\"Deduplicate bugs based on category and type\"\"\"
    unique_bugs = {}
    
    for bug in bugs:
        key = f\"{bug['category']}|{bug['type']}\"
        if key not in unique_bugs:
            unique_bugs[key] = bug
            unique_bugs[key]['count'] = 1
            unique_bugs[key]['apps'] = set()
        else:
            unique_bugs[key]['count'] += 1
        
        if 'app' in bug:
            unique_bugs[key]['apps'].add(bug['app'])
    
    return list(unique_bugs.values())

def generate_summary(summary_dir):
    \"\"\"Generate bug detection summary report\"\"\"
    summary_dir = Path(summary_dir)
    all_bugs = []
    app_stats = {}
    
    # Collect bugs from all apps
    for app_dir in summary_dir.iterdir():
        if not app_dir.is_dir():
            continue
        
        app_name = app_dir.name
        app_bugs = []
        
        for bug_file in app_dir.glob('bugs_round_*.txt'):
            bugs = parse_bug_report(bug_file)
            for bug in bugs:
                bug['app'] = app_name
                all_bugs.append(bug)
                app_bugs.append(bug)
        
        app_stats[app_name] = {
            'total_bugs': len(app_bugs),
            'bugs_by_category': defaultdict(int),
            'bugs_by_severity': defaultdict(int)
        }
        
        for bug in app_bugs:
            app_stats[app_name]['bugs_by_category'][bug['category']] += 1
            app_stats[app_name]['bugs_by_severity'][bug['severity']] += 1
    
    # Deduplicate bugs
    unique_bugs = deduplicate_bugs(all_bugs)
    
    # Generate summary report
    report_path = summary_dir / 'SUMMARY_REPORT.txt'
    
    with open(report_path, 'w') as f:
        f.write('='*80 + '\n')
        f.write('MULTI-APPLICATION BUG DETECTION SUMMARY REPORT\n')
        f.write('='*80 + '\n')
        f.write(f'Generated: {Path(summary_dir).name}\n')
        f.write(f'Total Applications Tested: {len(app_stats)}\n')
        f.write(f'Total Bugs Detected: {len(all_bugs)}\n')
        f.write(f'Unique Bug Types: {len(unique_bugs)}\n')
        f.write('='*80 + '\n\n')
        
        # Per-application statistics
        f.write('APPLICATION STATISTICS\n')
        f.write('='*80 + '\n')
        for app_name, stats in app_stats.items():
            f.write(f'\n{app_name.upper()}\n')
            f.write('-'*40 + '\n')
            f.write(f'Total Bugs: {stats[\"total_bugs\"]}\n')
            
            if stats['total_bugs'] > 0:
                f.write('\nBy Category:\n')
                for category, count in sorted(stats['bugs_by_category'].items()):
                    f.write(f'  - {category}: {count}\n')
                
                f.write('\nBy Severity:\n')
                for severity, count in sorted(stats['bugs_by_severity'].items()):
                    f.write(f'  - {severity}: {count}\n')
            f.write('\n')
        
        # Unique bugs (deduplicated)
        f.write('\n' + '='*80 + '\n')
        f.write('UNIQUE BUG TYPES (DEDUPLICATED)\n')
        f.write('='*80 + '\n\n')
        
        for bug in sorted(unique_bugs, key=lambda x: (-x['count'], x['category'])):
            f.write(f'Bug Type: {bug[\"type\"]}\n')
            f.write(f'Category: {bug[\"category\"]}\n')
            f.write(f'Severity: {bug[\"severity\"]}\n')
            f.write(f'Occurrences: {bug[\"count\"]}\n')
            if 'apps' in bug:
                f.write(f'Found in: {\" \".join(sorted(bug[\"apps\"]))}\n')
            f.write(f'Description: {bug[\"description\"]}\n')
            f.write('-'*80 + '\n\n')
        
        f.write('='*80 + '\n')
        f.write('END OF SUMMARY REPORT\n')
        f.write('='*80 + '\n')
    
    print(f'Summary report generated: {report_path}')
    
    # Also generate JSON for easier parsing
    json_path = summary_dir / 'summary.json'
    with open(json_path, 'w') as f:
        json.dump({
            'app_stats': app_stats,
            'unique_bugs': unique_bugs,
            'total_bugs': len(all_bugs),
            'total_apps': len(app_stats)
        }, f, indent=2, default=str)
    
    print(f'JSON summary generated: {json_path}')

if __name__ == '__main__':
    import sys
    if len(sys.argv) != 2:
        print('Usage: generate_summary.py <summary_dir>')
        sys.exit(1)
    
    generate_summary(sys.argv[1])
PYEOF
"

# Run summary generation
docker exec $CONTAINER_NAME python3 /app/generate_summary.py "${SUMMARY_DIR}"

echo ""
echo "=========================================="
echo "Summary report available at:"
echo "  ${SUMMARY_DIR}/SUMMARY_REPORT.txt"
echo "  ${SUMMARY_DIR}/summary.json"
echo "=========================================="
echo "End time: $(date)"
