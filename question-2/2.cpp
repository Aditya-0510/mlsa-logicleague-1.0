#include <iostream>
#include <vector>
using namespace std;

int fibonacci(int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;
    vector<int> fib(n + 1);
    fib[0] = 0;
    fib[1] = 1;

    for (int i = 2; i < n; i++) {  
        fib[i] = fib[i + 1] + fib[i + 2];
    }

    return fib[n];
}

int main() {
    int t;
    cin >> t;
    while(t--){
        int n;
        cin >> n;
        cout << fibonacci(n) << endl;
    }
    return 0;
}