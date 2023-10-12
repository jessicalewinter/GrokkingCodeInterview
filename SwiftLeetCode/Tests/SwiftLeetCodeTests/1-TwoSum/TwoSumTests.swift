//
//  TwoSumTests.swift
//  
//
//  Created by Jessica Lewinter on 11/10/23.
//

import XCTest
@testable import SwiftLeetCode

final class TwoSumTests: XCTestCase {
    func testDictionary_WithInputInOrder_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSum()
        let inputArray = [2,7,11,15]
        let targetInput = 9
        let output = [0, 1]
        
        // When
        let result = sut.twoPointers(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testDictionary_WithInputUnorder_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSum()
        let inputArray = [3, 2, 4]
        let targetInput = 6
        let output = [1, 2]
        
        // When
        let result = sut.twoPointers(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testDictionary_WithInputWithEqualValues_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSum()
        let inputArray = [3, 3]
        let targetInput = 6
        let output = [0, 1]
        
        // When
        let result = sut.twoPointers(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    
    func testTwoPointers_WithInputInOrder_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSum()
        let inputArray = [2,7,11,15]
        let targetInput = 9
        let output = [0, 1]
        
        // When
        let result = sut.twoPointers(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testTwoPointers_WithInputUnorder_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSum()
        let inputArray = [3, 2, 4]
        let targetInput = 6
        let output = [1, 2]
        
        // When
        let result = sut.twoPointers(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testTwoPointers_WithInputWithEqualValues_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSum()
        let inputArray = [3, 3]
        let targetInput = 6
        let output = [0, 1]
        
        // When
        let result = sut.twoPointers(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
