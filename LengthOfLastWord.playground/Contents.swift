//https://leetcode.com/problems/length-of-last-word/

/*
 Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word (last word means the last appearing word if we loop from left to right) in the string.

 If the last word does not exist, return 0.

 Note: A word is defined as a maximal substring consisting of non-space characters only.

 Example:

 Input: "Hello World"
 Output: 5

 
 */



import Foundation

class LengthOfLastWord {
    func lengthOfLastWord(_ s: String) -> Int {
        
        var words: [String] = []
        words = s.components(separatedBy: " ")

        let lastWordLength: Int
        lastWordLength = words.last!.count
        
        return lastWordLength
    }
}
