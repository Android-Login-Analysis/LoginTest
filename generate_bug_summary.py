#!/usr/bin/env python3
"""
Bug Detection Summary Generator
Analyzes all bug reports and generates a comprehensive summary with deduplication
"""

import re
import os
from pathlib import Path
from collections import defaultdict
from datetime import datetime

def parse_bug_report(file_path):
    """Parse bug report file and extract all bugs"""
    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    
    bugs = []
    
    # Split content by BUG DETECTED markers
    sections = re.split(r'={40,}\n.*?BUG DETECTED\n={40,}', content)
    
    for section in sections[1:]:  # Skip first section (header)
        try:
            # Extract bug information
            category_match = re.search(r'Category: (.*?)\n', section)
            type_match = re.search(r'Type: (.*?)\n', section)
            severity_match = re.search(r'Severity: (.*?)\n', section)
            desc_match = re.search(r'Description:\n  (.*?)\n\n', section, re.DOTALL)
            location_match = re.search(r'Location:\n  (.*?)(?:\n\nEvidence:|\n={40,})', section, re.DOTALL)
            evidence_match = re.search(r'Evidence:\n  (.*?)(?:\n\nRecommendation:|\n={40,})', section, re.DOTALL)
            
            if category_match and type_match and severity_match:
                bug = {
                    'category': category_match.group(1).strip(),
                    'type': type_match.group(1).strip(),
                    'severity': severity_match.group(1).strip(),
                    'description': desc_match.group(1).strip() if desc_match else '',
                    'location': location_match.group(1).strip() if location_match else '',
                    'evidence': evidence_match.group(1).strip()[:500] if evidence_match else ''
                }
                bugs.append(bug)
        except Exception as e:
            print(f"  Warning: Failed to parse section: {e}")
            continue
    
    return bugs

def deduplicate_bugs(all_bugs):
    """Deduplicate bugs based on category and type"""
    unique_bugs = {}
    
    for bug in all_bugs:
        key = f"{bug['category']}|{bug['type']}"
        
        if key not in unique_bugs:
            unique_bugs[key] = {
                **bug,
                'count': 1,
                'sources': [bug.get('source', 'unknown')]
            }
        else:
            unique_bugs[key]['count'] += 1
            if bug.get('source'):
                unique_bugs[key]['sources'].append(bug['source'])
    
    return list(unique_bugs.values())

def generate_summary_report(reports_dir, output_dir):
    """Generate comprehensive bug summary report"""
    reports_dir = Path(reports_dir)
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    
    # Collect all bugs
    all_bugs = []
    bug_files = list(reports_dir.glob('bugs_round_*.txt'))
    
    print(f"Found {len(bug_files)} bug report files")
    
    for bug_file in bug_files:
        print(f"  Processing: {bug_file.name}")
        bugs = parse_bug_report(bug_file)
        for bug in bugs:
            bug['source'] = bug_file.name
        all_bugs.extend(bugs)
        print(f"    Found {len(bugs)} bug(s)")
    
    print(f"\nTotal bugs collected: {len(all_bugs)}")
    
    # Deduplicate
    unique_bugs = deduplicate_bugs(all_bugs)
    print(f"Unique bug types: {len(unique_bugs)}")
    
    # Generate summary report
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    report_file = output_dir / f"BUG_SUMMARY_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
    
    with open(report_file, 'w') as f:
        f.write('='*80 + '\n')
        f.write('BUG DETECTION COMPREHENSIVE SUMMARY REPORT\n')
        f.write('='*80 + '\n')
        f.write(f'Generated: {timestamp}\n')
        f.write(f'Total Bug Reports Analyzed: {len(bug_files)}\n')
        f.write(f'Total Bugs Found: {len(all_bugs)}\n')
        f.write(f'Unique Bug Types (Deduplicated): {len(unique_bugs)}\n')
        f.write('='*80 + '\n\n')
        
        # Group by category
        bugs_by_category = defaultdict(list)
        for bug in unique_bugs:
            bugs_by_category[bug['category']].append(bug)
        
        f.write('BUGS BY CATEGORY\n')
        f.write('='*80 + '\n\n')
        
        for category in sorted(bugs_by_category.keys()):
            bugs = bugs_by_category[category]
            f.write(f'{category}\n')
            f.write('-'*80 + '\n')
            f.write(f'Total Bug Types: {len(bugs)}\n')
            f.write(f'Total Occurrences: {sum(b["count"] for b in bugs)}\n\n')
            
            for bug in sorted(bugs, key=lambda x: -x['count']):
                f.write(f'  Bug Type: {bug["type"]}\n')
                f.write(f'  Severity: {bug["severity"]}\n')
                f.write(f'  Occurrences: {bug["count"]}\n')
                f.write(f'  Description: {bug["description"][:150]}...\n')
                if bug.get('location'):
                    f.write(f'  Location: {bug["location"][:100]}...\n')
                f.write('\n')
        
        # Detailed bug list
        f.write('\n' + '='*80 + '\n')
        f.write('DETAILED BUG LIST (SORTED BY FREQUENCY)\n')
        f.write('='*80 + '\n\n')
        
        for i, bug in enumerate(sorted(unique_bugs, key=lambda x: -x['count']), 1):
            f.write(f'[{i}] {bug["type"]}\n')
            f.write('-'*80 + '\n')
            f.write(f'Category: {bug["category"]}\n')
            f.write(f'Severity: {bug["severity"]}\n')
            f.write(f'Occurrences: {bug["count"]}\n')
            f.write(f'Sources: {", ".join(bug["sources"][:5])}')
            if len(bug['sources']) > 5:
                f.write(f' ...and {len(bug["sources"])-5} more')
            f.write('\n\n')
            f.write(f'Description:\n{bug["description"]}\n\n')
            if bug.get('location'):
                f.write(f'Location:\n{bug["location"]}\n\n')
            if bug.get('evidence'):
                f.write(f'Evidence:\n{bug["evidence"][:500]}...\n\n')
            f.write('\n')
        
        # Statistics
        f.write('='*80 + '\n')
        f.write('STATISTICS\n')
        f.write('='*80 + '\n\n')
        
        severity_counts = defaultdict(int)
        for bug in all_bugs:
            severity_counts[bug['severity']] += 1
        
        f.write('By Severity:\n')
        for severity in ['CRITICAL', 'HIGH', 'MEDIUM', 'LOW']:
            if severity in severity_counts:
                f.write(f'  {severity}: {severity_counts[severity]}\n')
        
        f.write('\nBy Category:\n')
        for category, bugs in sorted(bugs_by_category.items()):
            total = sum(b['count'] for b in bugs)
            f.write(f'  {category}: {total}\n')
        
        f.write('\n' + '='*80 + '\n')
        f.write('END OF SUMMARY REPORT\n')
        f.write('='*80 + '\n')
    
    print(f"\nSummary report generated: {report_file}")
    return report_file

if __name__ == '__main__':
    reports_dir = '/app/reports/bugs'
    output_dir = '/app/reports'
    
    report_file = generate_summary_report(reports_dir, output_dir)
    
    # Print the report to console as well
    print("\n" + "="*80)
    print("REPORT PREVIEW")
    print("="*80)
    with open(report_file, 'r') as f:
        print(f.read())
