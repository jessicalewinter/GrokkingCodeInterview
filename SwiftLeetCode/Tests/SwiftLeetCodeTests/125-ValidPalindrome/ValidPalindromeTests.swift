//
//  ValidPalindromeTests.swift
//  
//
//  Created by Jessica Lewinter on 11/10/23.
//

import XCTest
@testable import SwiftLeetCode

final class ValidPalindromeTests: XCTestCase {
    func testIsPalindrome_withInputAWordPalindrome_ShouldReturnTrue() {
        // Given
        let sut = ValidPalindrome()
        let input = "arara"
        let output = true
        
        // When
        let result = sut.isPalindrome(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testIsPalindrome_withInputNotAPalindrome_ShouldReturnTrue() {
        // Given
        let sut = ValidPalindrome()
        let input = "cycle"
        let output = false
        
        // When
        let result = sut.isPalindrome(input)
        
        // Then
        XCTAssertEqual(result, output)
    }

    func testIsPalindrome_withInputEmptyString_ShouldReturnTrue() {
        // Given
        let sut = ValidPalindrome()
        let input = " "
        let output = true
        
        // When
        let result = sut.isPalindrome(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
