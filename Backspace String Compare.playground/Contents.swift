/*
 
 Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.

 Note that after backspacing an empty text, the text will continue empty.

 Example 1:

 Input: S = "ab#c", T = "ad#c"
 Output: true
 Explanation: Both S and T become "ac".
 Example 2:

 Input: S = "ab##", T = "c#d#"
 Output: true
 Explanation: Both S and T become "".
 Example 3:

 Input: S = "a##c", T = "#a#c"
 Output: true
 Explanation: Both S and T become "c".
 Example 4:

 Input: S = "a#c", T = "b"
 Output: false
 Explanation: S becomes "c" while T becomes "b".
 Note:

 1 <= S.length <= 200
 1 <= T.length <= 200
 S and T only contain lowercase letters and '#' characters.
 Follow up:

 Can you solve it in O(N) time and O(1) space?

 */

import UIKit

class Solution {
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        
        var charArrOne = Array(S)
        var charArrTwo = Array(T)
        
        
        for c in charArrOne {
            if c == "#" {
                let elementToRemove = charArrOne.before(c)
                
                if elementToRemove != nil {
                    charArrOne.remove(object: elementToRemove!)
                }
            }
        }
        
        for c in charArrTwo {
            if c == "#" {
                let elementToRemove = charArrTwo.before(c)
                
                if elementToRemove != nil {
                    charArrTwo.remove(object: elementToRemove!)
                }
            }
        }
        
        if charArrOne == charArrTwo {
            return true
        } else {
            return false
        }
        
    }
}




extension BidirectionalCollection where Iterator.Element: Equatable {
    typealias Element = Self.Iterator.Element

    func after(_ item: Element, loop: Bool = false) -> Element? {
        if let itemIndex = self.index(of: item) {
            let lastItem: Bool = (index(after:itemIndex) == endIndex)
            if loop && lastItem {
                return self.first
            } else if lastItem {
                return nil
            } else {
                return self[index(after:itemIndex)]
            }
        }
        return nil
    }

    func before(_ item: Element, loop: Bool = false) -> Element? {
        if let itemIndex = self.index(of: item) {
            let firstItem: Bool = (itemIndex == startIndex)
            if loop && firstItem {
                return self.last
            } else if firstItem {
                return nil
            } else {
                return self[index(before:itemIndex)]
            }
        }
        return nil
    }
}



extension Array where Element: Equatable {
    
    // Remove first collection element that is equal to the given `object`:
    mutating func remove(object: Element) {
        guard let index = firstIndex(of: object) else {return}
        remove(at: index)
    }
    
}
