//
//  TopKFrequentElements.swift
//  
//
//  Created by Jessica Lewinter on 02/10/23.
//

import Foundation

/// LeetCode: https://leetcode.com/problems/top-k-frequent-elements/
struct TopKFrequentElements {
    /// Time Complexity: O(nlog(n))
    /// Space Complexity: O(n)
    func calculate(_ nums: [Int], k: Int) -> [Int] {
        var frequencyDict = [Int: Int]()
        
        for num in nums {
            if let count = frequencyDict[num] {
                frequencyDict[num] = count + 1
            } else {
                frequencyDict[num] = 1
            }
        }
            
        let sortedDic = frequencyDict.sorted { $0.value > $1.value }
        
        var result = [Int]()

        for i in 0..<k {
            result.append(sortedDic[i].key)
        }
        
        return result
    }
}
