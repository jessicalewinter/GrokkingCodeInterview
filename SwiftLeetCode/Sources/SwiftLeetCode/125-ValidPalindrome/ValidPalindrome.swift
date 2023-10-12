//
//  ValidPalindrome.swift
//  
//
//  Created by Jessica Lewinter on 11/10/23.
//

import Foundation

/// LeetCode: https://leetcode.com/problems/valid-palindrome/
struct ValidPalindrome {
    /// Space Complexity: O(n)
    /// Time Complexity: O(n)
    func isPalindrome(_ s: String) -> Bool {
        let formatted = s.lowercased().filter {
            $0.isLetter || $0.isNumber
        }
        
        let formattedArray = Array(formatted)
        
        var left = 0
        var right = formattedArray.count - 1
        
        while left < right {
            if formattedArray[left] != formattedArray[right] {
                return false
            }
            
            left += 1
            right -= 1
        }
        
        return true
    }
}
