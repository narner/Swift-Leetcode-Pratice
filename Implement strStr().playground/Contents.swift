//https://leetcode.com/problems/implement-strstr/

/*
 Implement strStr().
 
 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 
 Example 1:
 
 Input: haystack = "hello", needle = "ll"
 Output: 2
 Example 2:
 
 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 Clarification:
 
 What should we return when needle is an empty string? This is a great question to ask during an interview.
 
 For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().
 
 
 */


func strStr(_ haystack: String, _ needle: String) -> Int {
    
    var haystackCharArray: [Character] = []
    var needleCharArray: [Character] = []
    
    for s in haystack {
        haystackCharArray.append(s)
    }
    
    for s in needle {
        needleCharArray.append(s)
    }
    
    
    var test: [Character] = []
    
    for c in haystackCharArray {
        _ = c
        
        for c in needleCharArray {
            test.append(c)
        }
        if test == needleCharArray {
            let index = haystackCharArray.firstIndex(of: test[0])
            return index!
        }
    }
    
    return -1
    
}

