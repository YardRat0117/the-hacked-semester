#!/bin/bash
# Test script for Terminal Exercise 1

echo "=== Testing Exercise 1 ==="
echo

# Check if practice directory exists
if [ -d "hacked-semester-practice" ]; then
    echo "✓ Practice directory exists"
    
    # Check if directory is empty (should be after cleanup)
    if [ -z "$(ls -A hacked-semester-practice 2>/dev/null)" ]; then
        echo "✓ Directory is properly cleaned up"
    else
        echo "✗ Directory still contains files"
        echo "  Contents:"
        ls -la hacked-semester-practice/
    fi
else
    echo "✗ Practice directory doesn't exist"
    echo "  Did you create 'hacked-semester-practice'?"
fi

echo
echo "=== Exercise 1 Test Complete ==="
echo "Note: This is a basic test. The real test is whether you completed the tasks!"
