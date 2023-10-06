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
    
    func testSearch_WithTargetDoesNotExistInArray_ShouldReturnNegative1AsOutput() {
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
}
