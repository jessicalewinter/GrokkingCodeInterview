//
//  BinarySearch.swift
//  
//
//  Created by Jessica Lewinter on 05/10/23.
//

import Foundation
/// LeetCode:

struct BinarySearch {
    /// Conditions: Array must be already sorted
    /// Time Complexity: O(log(n))
    /// Space Complexity: O(1)
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let middle = (left + right)/2
            let guess = nums[middle]
            
            if guess == target {
                return middle
            }
            
            if guess > target {
                right = middle - 1
            }
            
            if guess < target {
                left = middle + 1
            }
        }
        
        return -1
    }
}
