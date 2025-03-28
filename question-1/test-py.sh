#!/bin/bash

# Define the input test case
echo -e "2\n5 5\n50 40 30 20 10\n4 3\n7 2 9 4" > input.txt

# Expected output (modify if needed)
echo -e "50\n11" > expected_output.txt

# Run the Python script and save the output
python 1.py < input.txt > output.txt  # Replace 'your_script.py' with your actual filename

# Compare the output with the expected output
tr -d ' \t\n\r' < output.txt > output_trimmed.txt
tr -d ' \t\n\r' < expected_output.txt > expected_trimmed.txt

# Compare output with expected result
if diff output_trimmed.txt expected_trimmed.txt; then
    echo "✅ Test Passed!"
else
    echo "❌ Test Failed!"
fi