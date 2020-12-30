import UIKit

/*
 Given an integer n, return true if it is a power of three. Otherwise, return false.

 An integer n is a power of three, if there exists an integer x such that n == 3x.

*/


class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n % 3 == 0 {
            return true
        } else {
            return false
        }
    }
}
