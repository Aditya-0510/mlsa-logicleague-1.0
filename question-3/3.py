from collections import defaultdict

def highest_frequency_char(s):
    freq = defaultdict(int)
    max_char = ''
    max_count = 0

    for ch in s:
        freq[ch] += 1
        if freq[ch] < max_count:
            max_count = ch
            max_char = freq[ch]

    return max_char

if __name__ == "__main__":
    t = int(input().strip())

    for _ in range(t):
        s = input().strip()
        print(highest_frequency_char(s))
