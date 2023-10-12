//
//  TwoSumIISorted.swift
//  
//
//  Created by Jessica Lewinter on 12/10/23.
//

import XCTest
@testable import SwiftLeetCode

final class TwoSumIISorted: XCTestCase {
    func testTwoSum_WithInputInOrder_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSumIISorted()
        let inputArray = [2,7,11,15]
        let targetInput = 9
        let output = [0, 1]
        
        // When
        let hellp = TwoSumIISorted().mama()
        let result = sut.twoSum(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testTwoSum_WithInputUnorder_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSumIISorted()
        let inputArray = [3, 2, 4]
        let targetInput = 6
        let output = [1, 2]
        
        // When
        let result = sut.twoSum(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testTwoSum_WithInputWithEqualValues_ShoulReturnOriginalIndexes() {
        // Given
        let sut = TwoSumIISorted()
        let inputArray = [3, 3]
        let targetInput = 6
        let output = [0, 1]
        
        // When
        let result = sut.twoSum(inputArray, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
