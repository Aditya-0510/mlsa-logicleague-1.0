#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main()
{
    int t;
    cin >> t;

    while (t--)
    {
        int n, x;
        cin >> n >> x;
        vector<int> h(n);
        for (int i = 0; i < n; ++i)
        {
            cin >> h[i];
        }
        sort(h.begin(), h.end());

        long long maxHP = 0; 
        long long decrement = (n - 1) * x;
        for (int i = 1; i < n; ++i)
        {
            long long currentHP = h[i] + decrement;
            maxHP = min(maxHP, currentHP); 
            decrement -= 1;
        }
        cout << maxHP << endl;
    }

    return 0;
}
