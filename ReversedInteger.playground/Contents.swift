//https://leetcode.com/problems/reverse-integer/

/*
 Given a 32-bit signed integer, reverse digits of an integer.

 Example 1:

 Input: 123
 Output: 321
 Example 2:

 Input: -123
 Output: -321
 Example 3:

 Input: 120
 Output: 21
 Note:
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.


 */



class ReversedInteger {
    func reverse(_ x: Int) -> Int {

        let inputString = String(x)
        var stringArray: [Character] = []
        
        for c in inputString {
            stringArray.append(c)
        }
        
        let reversedStringArray = stringArray.reversed()
        let reversedString: String = String(reversedStringArray)
        let reversedInt = Int(reversedString)
        
        return reversedInt!
        
    }
}

