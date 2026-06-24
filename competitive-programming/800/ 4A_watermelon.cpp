#include <iostream>

using namespace std;

int main() {
    int w;
    // First of all, we take input W.
    cin >> w;
    
    // If W is odd, we directly print "no".
    if (w % 2 != 0) {
        cout << "NO" << endl;
        return 0;
    }
    
    // If W is even, then we go further into the programme.
    // For the split, we are going to use a for loop. 
    // We are going to subtract in an ascending manner up until half of that value that we are being given, that is half of the W here.
    // Why I didn't take the later ones is that the later ones always have the number repeat, so that the number just switches around like in permutation.
    for (int i = 1; i <= w / 2; i++) {
        int part1 = i;
        int part2 = w - i;
        
        // After all this is done for all of the cases that we have right now in our hands for the splitting, 
        // we check each one with the rule of even, that is, we divide each split by 2 and see if we get a whole number.
        // If you have the remainder zero, then we print a yes.
        if (part1 % 2 == 0 && part2 % 2 == 0) {
            cout << "YES" << endl;
            return 0;
        }
    }
    
    // If we don't get the remainder zero, then we print a no.
    cout << "NO" << endl;
    
    return 0;
}