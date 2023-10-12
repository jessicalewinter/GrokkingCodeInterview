//
//  TopKFrequentElementsTests.swift
//  
//
//  Created by Jessica Lewinter on 02/10/23.
//

import XCTest
@testable import SwiftLeetCode

final class TopKFrequentElementsTests: XCTestCase {

    func testCalculate_WithKAsNotZeroAndInputArrayWithMoreThanOneElement_ShouldReturnTheMostRepetingArrayAsOutput() {
        // Given
        let inputArray: [Int] = [1, 1, 1, 2, 2, 3]
        let inputK: Int = 2
        let output: [Int] = [1, 2]
        let sut = TopKFrequentElements()
        
        // When
        let result = sut.calculate(inputArray, k: inputK)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testCalculate_WithKAsZeroAndInputArrayWithMoreThanOneElement_ShouldReturnEmptyArray() {
        // Given
        let inputArray: [Int] = [1, 1, 1, 2, 2, 3]
        let inputK: Int = 0
        let output: [Int] = []
        let sut = TopKFrequentElements()
        
        // When
        let result = sut.calculate(inputArray, k: inputK)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testCalculate_WithKAsOneAndInputArrayWithEqualOneElement_ShouldReturnTEmptyArray() {
        // Given
        let inputArray: [Int] = [1]
        let inputK: Int = 1
        let output: [Int] = [1]
        let sut = TopKFrequentElements()
        
        // When
        let result = sut.calculate(inputArray, k: inputK)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
