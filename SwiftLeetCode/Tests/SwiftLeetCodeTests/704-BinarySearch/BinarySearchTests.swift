//
//  BinarySearchTests.swift
//  
//
//  Created by Jessica Lewinter on 06/10/23.
//

import Foundation
import XCTest
@testable import SwiftLeetCode

final class BinarySearchTests: XCTestCase {
    func testSearch_WithTargetDoesExistInArray_ShouldReturnTargetIndexPositionAsOutput() {
        // Given
        let input = [4, 12, 14, 26, 33, 37, 45, 51, 53]
        let targetInput = 37
        let sut = BinarySearch()
        let output = 5
        
        // When
        let result = sut.search(input, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testSearch_WithTargetDoesNotExistInArray_ShouldReturnNegativeOneAsOutput() {
        // Given
        let input = [4, 12, 14, 26, 33, 37, 45, 51, 53]
        let targetInput = 44
        let sut = BinarySearch()
        let output = -1
        
        // When
        let result = sut.search(input, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testSearch_WithTargetInputTwoExistsInArray_ShouldReturnOutputAsFour() {
        // Given
        let input = [-1, 0, 3, 5, 9, 12]
        let targetInput = 9
        let sut = BinarySearch()
        let output = 4
        
        // When
        let result = sut.search(input, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testSearch_WithTargetInputTwoDoesNotExistsInArray_ShouldReturnOutputAsNegativeOne() {
        // Given
        let input = [-1, 0, 3, 5, 9, 12]
        let targetInput = 2
        let sut = BinarySearch()
        let output = -1
        
        // When
        let result = sut.search(input, targetInput)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
