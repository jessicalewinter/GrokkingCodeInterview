//
//  ReverseString.swift
//
//
//  Created by Jessica Lewinter on 16/10/23.
//

import Foundation

/// LeetCode: https://leetcode.com/problems/reverse-string/
struct ReverseString {
    /// Space Complexity: O(1)
    /// Time Complexity: O(n)
    func reverseString(_ s: inout [Character]) -> [Character] {
        var left = 0
        var right = s.count - 1
        
        while left < right {
            let aux = s[left]
            s[left] = s[right]
            s[right] = aux
            left += 1
            right -= 1
        }
        
        return s
    }
    
    func builtIn(_ s: inout [Character]) -> [Character] {
        return s.reversed()
    }
    
//    func recursion(_ s: inout [Character]) -> [Character] {
//        
//    }
}
