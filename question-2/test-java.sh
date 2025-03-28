#!/bin/bash

# Compile the Java program
javac Question2.java

# Create input file with the test case
echo -e "5\n0\n1\n5\n10\n15" > input.txt

# Run the Java program and save output
java Question2 < input.txt > output.txt

# Create expected output file (update expected value as needed)
echo -e "0\n1\n5\n55\n610" > expected_output.txt  

# Normalize both files before comparing
tr -d ' \t\n\r' < output.txt > output_trimmed.txt
tr -d ' \t\n\r' < expected_output.txt > expected_trimmed.txt

# Compare output with expected result
if diff output_trimmed.txt expected_trimmed.txt; then
    echo "✅ Test Passed!"
else
    echo "❌ Test Failed!"
fi
