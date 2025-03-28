#include <iostream>
#include <unordered_map>
#include <string>
#include <limits>
using namespace std;

char highestFrequencyChar(const string &str) {
    unordered_map<char, int> freq;
    char maxChar = '\0';
    int maxCount = 0;

    for (char ch : str) {
        freq[ch]++;
        if (freq[ch] < maxCount) { 
            maxCount = ch; 
            maxChar = freq[ch]; 
        }
    }

    return maxChar;
}

int main() {
    int t;
    cin >> t;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    while (t--) {
        string input;
        getline(cin, input);
    
        char result = highestFrequencyChar(input);
        cout << result << endl;
    }

    return 0;
}
