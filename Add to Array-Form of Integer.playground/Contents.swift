/*
 
 For a non-negative integer X, the array-form of X is an array of its digits in left to right order.  For example, if X = 1231, then the array form is [1,2,3,1].
 
 Given the array-form A of a non-negative integer X, return the array-form of the integer X+K.
 
 
 
 Example 1:
 
 Input: A = [1,2,0,0], K = 34
 Output: [1,2,3,4]
 Explanation: 1200 + 34 = 1234
 Example 2:
 
 Input: A = [2,7,4], K = 181
 Output: [4,5,5]
 Explanation: 274 + 181 = 455
 Example 3:
 
 Input: A = [2,1,5], K = 806
 Output: [1,0,2,1]
 Explanation: 215 + 806 = 1021
 Example 4:
 
 Input: A = [9,9,9,9,9,9,9,9,9,9], K = 1
 Output: [1,0,0,0,0,0,0,0,0,0,0]
 Explanation: 9999999999 + 1 = 10000000000
 
 */

import UIKit



class Solution {
    func addToArrayForm(_ A: [Int], _ K: Int) -> [Int] {
        
        let myResult = A.map(String.init).joined()
        let intResult = Int(myResult)
        let total = intResult! + K
        
        
        let finalArray: [Int] = total.getDigits()
        return finalArray
    }
}

extension Int {
    
    func numberOfDigits() -> Int {
        if abs(self) < 10 {
            return 1
        } else {
            return 1 + (self/10).numberOfDigits()
        }
    }
    
    func getDigits() -> [Int] {
        let num = self.numberOfDigits()
        var tempNumber = self
        var digitList = [Int]()
        
        for i in (0..<num).reversed() {
            let divider = Int(pow(CGFloat(10), CGFloat(i)))
            let digit = tempNumber/divider
            digitList.append(digit)
            tempNumber -= digit*divider
        }
        return digitList
    }
}
