//
//  ReverseStringTests.swift
//  
//
//  Created by Jessica Lewinter on 16/10/23.
//

import XCTest
@testable import SwiftLeetCode

final class ReverseStringTests: XCTestCase {

    func testReverseString_WhenInputIsGreaterThanZero_ShouldReturnReversedString() {
        // Given
        let sut = ReverseString()
        var input: [Character] = ["h", "e", "l", "l", "o"]
        let output: [Character] = ["o", "l", "l", "e", "h"]

        // When
        let result = sut.reverseString(&input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testReverseString_WhenAnotherInputIsGreaterThanZero_ShouldReturnReversedString() {
            // Given
        let sut = ReverseString()
        var input: [Character] = ["H", "a", "n", "n", "a", "h"]
        let output: [Character] = ["h", "a", "n", "n", "a", "H"]
        
            // When
        let result = sut.reverseString(&input)
        
            // Then
        XCTAssertEqual(result, output)
    }
}
