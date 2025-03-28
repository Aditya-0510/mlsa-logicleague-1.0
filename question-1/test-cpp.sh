#!/bin/bash

# Compile the C++ program
g++ -o question-1 1.cpp

# Create input file with the new test case
echo -e "2\n5 5\n50 40 30 20 10\n4 3\n7 2 9 4" > input.txt

# Run the program and save output
./question-1 < input.txt > output.txt

# Create expected output file (update expected value as needed)
echo -e "50\n11" > expected_output.txt  # Update this based on expected logic

# Normalize both files before comparing
tr -d ' \t\n\r' < output.txt > output_trimmed.txt
tr -d ' \t\n\r' < expected_output.txt > expected_trimmed.txt

# Compare output with expected result
if diff output_trimmed.txt expected_trimmed.txt; then
    echo "✅ Test Passed!"
else
    echo "❌ Test Failed!"
fi
