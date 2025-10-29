#!/bin/bash
# Quick test script for NewsBlur bug detection

echo "========================================="
echo "NewsBlur Bug Detection Test"
echo "========================================="

# Set NewsBlur APK
export TEST_APK="Example_Repo/NewsBlur/clients/android/NewsBlur/app/build/outputs/apk/debug/app-debug.apk"

# Check if APK exists
if [ ! -f "$TEST_APK" ]; then
    echo "ERROR: NewsBlur APK not found at $TEST_APK"
    echo "Please build it first: cd Example_Repo/NewsBlur/clients/android && ./gradlew assembleDebug"
    exit 1
fi

echo "✓ Found NewsBlur APK"

# Update config for quick test
echo "Configuring for quick test (1 round)..."
cd /app

# Create temporary config
cat > config_newsblur_test.properties << EOF
# NewsBlur Bug Detection Test Config
app.apk.path=${TEST_APK}
app.package.name=com.newsblur
test.rounds=1
test.round.interval=5
detection.login.timeout=180
monkey.events=500
network.chaos.enabled=false
taint.analysis.enabled=false
EOF

echo "✓ Config created"
echo ""
echo "Starting test..."
echo "This will:"
echo "  1. Install and launch NewsBlur"
echo "  2. Monitor login flow"
echo "  3. Detect bugs in error handling"
echo "  4. Generate bug report in reports/bugs/"
echo ""

# Run the test
mvn exec:java -Dexec.mainClass="AndroidLoginDetector" \
  -Dexec.args="config_newsblur_test.properties" 2>&1 | tee newsblur_test_output.log

echo ""
echo "========================================="
echo "Test Complete!"
echo "========================================="
echo ""

# Check for bug reports
if [ -d "reports/bugs" ]; then
    echo "Bug Reports:"
    ls -lh reports/bugs/bugs_round_* 2>/dev/null || echo "  No bugs detected"
else
    echo "No bug reports found"
fi

echo ""
echo "Full log saved to: newsblur_test_output.log"
