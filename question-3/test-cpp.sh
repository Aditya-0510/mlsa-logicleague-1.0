#!/bin/bash

# Compile the C++ program
g++ -o question-1 3.cpp

# Create input file with the new test case
echo -e "5\nhello world\naabbbcccc\naabbcccaa\n112233444455555\n@@@###$$$%%%%%"  > input.txt

# Run the program and save output
./question-1 < input.txt > output.txt

# Create expected output file (update expected value as needed)
echo -e "l\nc\na\n5\n%" > expected_output.txt  

# Normalize both files before comparing
tr -d ' \t\n\r' < output.txt > output_trimmed.txt
tr -d ' \t\n\r' < expected_output.txt > expected_trimmed.txt

# Compare output with expected result
if diff output_trimmed.txt expected_trimmed.txt; then
    echo "✅ Test Passed!"
else
    echo "❌ Test Failed!"
fi
