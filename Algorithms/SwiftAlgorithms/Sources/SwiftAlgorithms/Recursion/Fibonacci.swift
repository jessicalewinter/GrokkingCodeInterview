//
//  Fibonacci.swift
//  
//
//  Created by Jessica Lewinter on 09/10/23.
//

import Foundation

struct Fibonacci {
    func recursive(_ number: Int) -> Int {
        guard number > 1 else { return number }
        
        return recursive(number - 1) + recursive(number - 2)
    }
    
    func nonRecursive(_ number: Int) -> Int {
        guard number > 1 else { return number }
        
        var fibPrev = 0 // f(0)
        var fibCurrent = 1 // f(1)
        
        for _ in 2...number {
            let temp = fibPrev + fibCurrent
            fibPrev = fibCurrent
            fibCurrent = temp
        }
        
        return fibCurrent
    }
}
