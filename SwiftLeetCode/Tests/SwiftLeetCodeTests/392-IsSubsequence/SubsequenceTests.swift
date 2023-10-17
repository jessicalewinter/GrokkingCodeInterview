//
//  SubsequenceTests.swift
//  
//
//  Created by Jessica Lewinter on 16/10/23.
//

import XCTest
@testable import SwiftLeetCode

final class SubsequenceTests: XCTestCase {

    func testSubsequence_WhenSequenceContainsSubsequence_ShouldReturnTrue() {
        // Given
        let sut = Subsequence()
        let inputStringOne = "abc"
        let inputStringTwo = "ahbgdc"
        
        // When
        let result = sut.isSubsequence(inputStringOne, inputStringTwo)
        
        // Then
        XCTAssertTrue(result)
    }
    
    func testSubsequence_WhenSequenceDoesNotContainsSubsequence_ShouldReturnFalse() {
        // Given
        let sut = Subsequence()
        let inputStringOne = "axc"
        let inputStringTwo = "ahbgdc"
        
        // When
        let result = sut.isSubsequence(inputStringOne, inputStringTwo)
        
        // Then
        XCTAssertFalse(result)
    }
    
    func testSubsequence_WhenSequenceWithAllSameCharactersDoesNotContainsSubsequence_ShouldReturnFalse() {
        // Given
        let sut = Subsequence()
        let inputStringOne = "aaaaaa"
        let inputStringTwo = "bbaaaa"
        
        // When
        let result = sut.isSubsequence(inputStringOne, inputStringTwo)
        
        // Then
        XCTAssertFalse(result)
    }
}
