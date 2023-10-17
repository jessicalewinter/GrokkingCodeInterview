//
//  TwoSumIISortedTests.swift
//  
//
//  Created by Jessica Lewinter on 12/10/23.
//

import XCTest
@testable import SwiftLeetCode

final class TwoSumIISortedTests: XCTestCase {
    func testTwoSum_WithInputInOrder_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSumIISorted()
        let inputArray = [2, 7, 11, 15]
        let targetInput = 9
        let output = [1, 2]
        
        // When
        let result = sut.twoSum(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testTwoSum_WithSecondInputInOrder_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSumIISorted()
        let inputArray = [2, 3, 4]
        let targetInput = 6
        let output = [1, 3]
        
        // When
        let result = sut.twoSum(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testTwoSum_WithInputWithEqualValues_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSumIISorted()
        let inputArray = [-1, 0]
        let targetInput = -1
        let output = [1, 2]
        
        // When
        let result = sut.twoSum(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
