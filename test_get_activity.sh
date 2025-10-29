#!/bin/bash
# Test getCurrentActivity() logic

echo "=== Test 1: Raw dumpsys output ==="
adb shell dumpsys window | grep -E "mCurrentFocus|mFocusedApp" | head -3

echo ""
echo "=== Test 2: Parse activity name ==="
line=$(adb shell dumpsys window | grep "mCurrentFocus" | head -1)
echo "Full line: $line"

# Extract activity using same logic as Java code
if echo "$line" | grep -q "u0 "; then
    activity=$(echo "$line" | sed 's/.*u0 //;s/}.*//')
    echo "Extracted activity: $activity"
fi

echo ""
echo "=== Test 3: Alternative parsing ==="
adb shell dumpsys window | grep "mCurrentFocus" | sed 's/.*u0 //;s/}.*//' | head -1
