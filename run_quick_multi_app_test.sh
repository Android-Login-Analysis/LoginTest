#!/bin/bash
# Quick Multi-Application Bug Detection Test (1 round per app)

set -e

CONTAINER_NAME="logintest-android-login-detector-1"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
SUMMARY_DIR="reports/multi_app_summary_${TIMESTAMP}"

echo "=========================================="
echo "Quick Multi-App Bug Detection Test"
echo "Testing: NewsBlur, GitNex, Kickstarter, LibreTube"
echo "Rounds per app: 1"
echo "Timestamp: ${TIMESTAMP}"
echo "=========================================="
echo ""

# Application configurations: name|apk|package|activity|snapshot
declare -a APPS=(
    "newsblur|com.newsblur_240.apk|com.newsblur|com.newsblur.activity.Main|snap_newsblur_login"
    "gitnex|org.mian.gitnex_550.apk|org.mian.gitnex|org.mian.gitnex.activities.MainActivity|snap_gitnex_login"
    "kickstarter|Kickstarter_3.24.1_apkcombo.com.apk|com.kickstarter.kickstarter|com.kickstarter.ui.activities.DiscoveryActivity|snap_kickstarter_login"
    "libretube|com.github.libretube_62.apk|com.github.libretube|com.github.libretube.activities.MainActivity|snap_libretube_login"
)

# Create summary directory
mkdir -p "$SUMMARY_DIR"

# Function to test one app
test_app() {
    local config=$1
    IFS='|' read -r name apk package activity snapshot <<< "$config"
    
    echo "=========================================="
    echo "Testing: $name"
    echo "=========================================="
    
    # Backup current reports
    echo "[1/6] Backing up current reports..."
    docker exec $CONTAINER_NAME bash -c "mkdir -p /app/reports/bugs_backup && mv /app/reports/bugs/*.txt /app/reports/bugs_backup/ 2>/dev/null || true"
    
    # Update config
    echo "[2/6] Updating configuration..."
    docker exec $CONTAINER_NAME sed -i "s|^app.path=.*|app.path=apps/${apk}|" /app/src/main/resources/config.properties
    docker exec $CONTAINER_NAME sed -i "s|^app.package=.*|app.package=${package}|" /app/src/main/resources/config.properties
    docker exec $CONTAINER_NAME sed -i "s|^app.activity=.*|app.activity=${activity}|" /app/src/main/resources/config.properties
    docker exec $CONTAINER_NAME sed -i "s|^emulator.snapshot=.*|emulator.snapshot=${snapshot}|" /app/src/main/resources/config.properties
    docker exec $CONTAINER_NAME sed -i "s|^test.rounds=.*|test.rounds=1|" /app/src/main/resources/config.properties
    
    # Recompile
    echo "[3/6] Recompiling..."
    docker exec $CONTAINER_NAME bash -c "cd /app && rm -rf target && mvn clean compile -DskipTests -q" 2>&1 | grep -E "BUILD|ERROR" || true
    
    # Restart container
    echo "[4/6] Restarting container..."
    docker compose restart > /dev/null 2>&1
    sleep 20
    
    # Wait for test to complete
    echo "[5/6] Running test (1 round, ~4 minutes)..."
    sleep 240
    
    # Collect bugs
    echo "[6/6] Collecting bug reports..."
    mkdir -p "$SUMMARY_DIR/$name"
    docker exec $CONTAINER_NAME bash -c "cp /app/reports/bugs/*.txt $SUMMARY_DIR/$name/ 2>/dev/null || echo 'No bugs found for $name'"
    
    # Count bugs
    local bug_count=$(docker exec $CONTAINER_NAME bash -c "grep -c 'BUG DETECTED' /app/reports/bugs/*.txt 2>/dev/null || echo 0")
    echo "✓ $name: $bug_count bug(s) detected"
    echo ""
}

# Test each application
for app_config in "${APPS[@]}"; do
    test_app "$app_config"
done

echo "=========================================="
echo "Generating summary report..."
echo "=========================================="

# Copy summary script
cat > "${SUMMARY_DIR}/analyze.py" << 'PYEOF'
#!/usr/bin/env python3
import os
import re
from pathlib import Path
from collections import defaultdict

def parse_bug_report(file_path):
    with open(file_path, 'r') as f:
        content = f.read()
    
    bugs = []
    sections = content.split('BUG DETECTED')
    
    for section in sections[1:]:  # Skip first empty section
        try:
            category = re.search(r'Category: (.*?)\n', section)
            bug_type = re.search(r'Type: (.*?)\n', section)
            severity = re.search(r'Severity: (.*?)\n', section)
            description = re.search(r'Description:\n  (.*?)\n', section, re.DOTALL)
            
            if category and bug_type and severity and description:
                bugs.append({
                    'category': category.group(1).strip(),
                    'type': bug_type.group(1).strip(),
                    'severity': severity.group(1).strip(),
                    'description': description.group(1).strip().replace('\n', ' ')[:200]
                })
        except:
            continue
    
    return bugs

def main():
    summary_dir = Path('.')
    
    # Collect all bugs
    app_bugs = {}
    all_bugs = []
    
    for app_dir in summary_dir.iterdir():
        if app_dir.is_dir() and app_dir.name not in ['.', '..']:
            app_name = app_dir.name
            app_bugs[app_name] = []
            
            for bug_file in app_dir.glob('*.txt'):
                bugs = parse_bug_report(bug_file)
                app_bugs[app_name].extend(bugs)
                all_bugs.extend([(app_name, bug) for bug in bugs])
    
    # Generate summary
    with open('SUMMARY_REPORT.txt', 'w') as f:
        f.write('='*80 + '\n')
        f.write('MULTI-APPLICATION BUG DETECTION SUMMARY\n')
        f.write('='*80 + '\n')
        f.write(f'Total Applications: {len(app_bugs)}\n')
        f.write(f'Total Bugs Found: {len(all_bugs)}\n')
        f.write('='*80 + '\n\n')
        
        # Per-app summary
        f.write('PER-APPLICATION RESULTS\n')
        f.write('='*80 + '\n\n')
        
        for app, bugs in sorted(app_bugs.items()):
            f.write(f'{app.upper()}\n')
            f.write('-'*40 + '\n')
            f.write(f'Total Bugs: {len(bugs)}\n\n')
            
            if bugs:
                # Group by category
                by_category = defaultdict(list)
                for bug in bugs:
                    by_category[bug['category']].append(bug)
                
                for category, cat_bugs in sorted(by_category.items()):
                    f.write(f'  {category}: {len(cat_bugs)} bug(s)\n')
                    for bug in cat_bugs:
                        f.write(f'    - {bug["type"]} [{bug["severity"]}]\n')
                        f.write(f'      {bug["description"][:100]}...\n')
                f.write('\n')
            else:
                f.write('  No bugs detected\n\n')
        
        # Unique bug types
        f.write('='*80 + '\n')
        f.write('UNIQUE BUG TYPES ACROSS ALL APPS\n')
        f.write('='*80 + '\n\n')
        
        bug_types = defaultdict(lambda: {'count': 0, 'apps': set(), 'severity': None, 'desc': None})
        for app, bug in all_bugs:
            key = f"{bug['category']}|{bug['type']}"
            bug_types[key]['count'] += 1
            bug_types[key]['apps'].add(app)
            bug_types[key]['severity'] = bug['severity']
            bug_types[key]['desc'] = bug['description']
        
        for bug_key, info in sorted(bug_types.items(), key=lambda x: -x[1]['count']):
            category, bug_type = bug_key.split('|')
            f.write(f'Bug: {bug_type}\n')
            f.write(f'Category: {category}\n')
            f.write(f'Severity: {info["severity"]}\n')
            f.write(f'Occurrences: {info["count"]}\n')
            f.write(f'Found in: {", ".join(sorted(info["apps"]))}\n')
            f.write(f'Description: {info["desc"][:150]}...\n')
            f.write('-'*80 + '\n\n')
        
        f.write('='*80 + '\n')
        f.write('END OF REPORT\n')
        f.write('='*80 + '\n')
    
    print('Summary report generated: SUMMARY_REPORT.txt')

if __name__ == '__main__':
    main()
PYEOF

# Run analysis
cd "$SUMMARY_DIR"
python3 analyze.py
cd - > /dev/null

echo ""
echo "=========================================="
echo "✓ All tests completed!"
echo "=========================================="
echo "Summary report: $SUMMARY_DIR/SUMMARY_REPORT.txt"
echo ""
cat "$SUMMARY_DIR/SUMMARY_REPORT.txt"
