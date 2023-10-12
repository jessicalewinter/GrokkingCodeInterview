//
//  TwoSumII.swift
//  
//
//  Created by Jessica Lewinter on 11/10/23.
//

import Foundation

/// LeetCode: https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
struct TwoSumIISorted {
    /// Input array is already sorted, we can use the two pointers strategy
    /// Time Complexity: O(n)
    /// Space Complexity: O(1)
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        
        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left + 1, right + 1]
            }
            
            if sum < target {
                left += 1
            }
            
            if sum > target {
                right -= 1
            }
        }
        
        return []
    }
}
