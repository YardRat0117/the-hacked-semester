#!/bin/bash
# Basic terminal commands examples

echo "=== Basic Terminal Commands Examples ==="
echo

echo "1. Navigation:"
echo "   pwd: $(pwd)"
echo "   ls -la:"
ls -la | head -5
echo

echo "2. File Operations:"
echo "   Creating test file..."
echo "Hello from The Hacked Semester!" > test.txt
echo "   cat test.txt:"
cat test.txt
echo

echo "3. Text Processing:"
echo "   grep example:"
echo -e "apple\nbanana\ncherry\napple pie" | grep apple
echo

echo "4. Cleanup:"
rm -f test.txt
echo "   test.txt removed"
