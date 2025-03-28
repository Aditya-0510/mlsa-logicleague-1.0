#!/bin/bash

# Compile the Java program
javac Question1.java

# Define the input test case
echo -e "2\n5 5\n50 40 30 20 10\n4 3\n7 2 9 4" > input.txt

# Expected output (modify based on expected results)
echo -e "50\n11" > expected_output.txt 

# Run the Java program and save the output
java Question1 < input.txt > output.txt

# Compare the output with the expected output
tr -d ' \t\n\r' < output.txt > output_trimmed.txt
tr -d ' \t\n\r' < expected_output.txt > expected_trimmed.txt

# Compare output with expected result
if diff output_trimmed.txt expected_trimmed.txt; then
    echo "✅ Test Passed!"
else
    echo "❌ Test Failed!"
fi