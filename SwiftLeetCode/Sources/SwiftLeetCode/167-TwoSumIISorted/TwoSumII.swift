//
//  TwoSumII.swift
//  
//
//  Created by Jessica Lewinter on 11/10/23.
//

import Foundation

struct TwoSumII {
    // input array is already sorted, we can use two pointers
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count
        
        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left, right]
            }
            
            if sum < target {
                left += 1
            }
            
            if sum > target {
                right += 1
            }
        }
        
        return []
    }
}
