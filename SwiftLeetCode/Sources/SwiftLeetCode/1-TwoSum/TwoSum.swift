//
//  TwoSum.swift
//  
//
//  Created by Jessica Lewinter on 11/10/23.
//

import Foundation

/// LeetCode: https://leetcode.com/problems/two-sum
struct TwoSum {
    /// Space Complexity: O(n) -> creates a dictionary
    /// Time Complexity: O(n)
    func dictionary(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int : Int] = [:]
        // input example: [2, 7, 11, 15] and target 9
        for (index, num) in nums.enumerated() { // 0, 2 -> 1, 7
            if let value = dict[num] { // nil -> key 7 exists, return value 0 and index 1
                return [value, index]
            }
            
            dict[target - num] = index // 9 - 2 = 7/ 7:0
        }
        
        return []
    }
    
    /// Array must be sorted
    /// Space Complexity: O(n) -> creates a tuple with the same size of the input
    /// Time Complexity: O(nlog(n)) -> sorted + while loop
    func twoPointers(_ nums: [Int], _ target: Int) -> [Int] {
        let tupleNums: [(Int, Int)] = nums.enumerated().map { index, element in
            return (index, element)
        }
        // sort the tuple array by the element
        let sortedTupleNums = tupleNums.sorted { $0.1 < $1.1 }
        
        // start two-sum
        var left = 0
        var right = sortedTupleNums.count - 1
        
        while left < right {
            let sum = sortedTupleNums[left].1 + sortedTupleNums[right].1
            
            if sum == target {
                // return the indexes of the original array
                return [sortedTupleNums[left].0, sortedTupleNums[right].0]
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
