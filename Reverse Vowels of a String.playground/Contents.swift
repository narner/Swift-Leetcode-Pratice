/*
 Write a function that takes a string as input and reverse only the vowels of a string.

 Example 1:

 Input: "hello"
 Output: "holle"
 Example 2:

 Input: "leetcode"
 Output: "leotcede"
 Note:
 The vowels does not include the letter "y".

*/

class Solution {
    func reverseVowels(_ s: String) -> String {
        var charArray = Array(s)
        
        var vowelOneIndex: Int!
        var vowelTwoIndex: Int!
        
        for c in charArray {
        
            if isAVowel(String(c)) == true {
                if vowelOneIndex == nil {
                    vowelOneIndex = charArray.firstIndex(of: c)
                }
                if vowelOneIndex != nil {
                    vowelTwoIndex = charArray.firstIndex(of: c)
                    charArray.swapAt(vowelOneIndex, vowelTwoIndex)
                }
            }
        }
        
        let reversedString = String(charArray)
        
        return reversedString
    }

    
    
    func isAVowel(_ s: String) -> Bool {
        
        if s == "a" || s == "A" || s == "e" || s == "E" || s == "i" || s == "I" || s == "o" || s == "O" || s == "u" || s == "U" {
            return true
        } else {
            return false
        }
    }
    
    
}
