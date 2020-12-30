import UIKit

/* Given two arrays, write a function to compute their intersection.
 
 Example 1:

 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2]
 Example 2:

 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [9,4]
 Note:

 Each element in the result must be unique.
 The result can be in any order.
*/


class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let arrayOne = nums1
        let arrayTwo = nums2
        var intersection: [Int] = []
        
        for n in arrayOne {
            for m in arrayTwo {
                if n == m {
                    if intersection.contains(n) == false {
                        intersection.append(n)
                    }
                }
            }
        }
        
        return intersection
    }
}
