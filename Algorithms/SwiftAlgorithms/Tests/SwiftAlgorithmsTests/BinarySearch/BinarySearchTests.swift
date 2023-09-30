//
//  BinarySearchTests.swift
//
//
//  Created by Jessica Lewinter on 29/09/23.
//

import XCTest
@testable import SwiftAlgorithms

final class BinarySearchTests: XCTestCase {
    func testCalculate_whenItemIsGreaterThanMiddleAndIsOnList_shouldReturnTrue() {
        // Given
        let sut = BinarySearch()
        let list = [3, 8, 14, 33, 51, 62, 87, 91]
        let input = 62
        
        // When
        let output = sut.calculate(list: list, item: input)
        
        // Then
        XCTAssertTrue(output)
    }
    
    func testCalculate_whenItemIsGreaterThanMiddleAndIsNotOnList_shouldReturnFalse() {
        // Given
        let sut = BinarySearch()
        let list = [3, 8, 14, 33, 51, 62, 87, 91]
        let input = 98
        
        // When
        let output = sut.calculate(list: list, item: input)
        
        // Then
        XCTAssertFalse(output)
    }
    
    func testCalculate_whenItemIsLessThanMiddleAndIsOnList_shouldReturnTrue() {
        // Given
        let sut = BinarySearch()
        let list = [3, 8, 14, 33, 51, 62, 87, 91]
        let input = 8
        
        // When
        let output = sut.calculate(list: list, item: input)
        
        // Then
        XCTAssertTrue(output)
    }
    
    func testCalculate_whenItemIsLessThanMiddleAndIsNotOnList_shouldReturnFalse() {
        // Given
        let sut = BinarySearch()
        let list = [3, 8, 14, 33, 51, 62, 87, 91]
        let input = 1
        
        // When
        let output = sut.calculate(list: list, item: input)
        
        // Then
        XCTAssertFalse(output)
    }
    
    func testCalculate_whenItemIsEqualMiddleAndIsNotOnList_shouldReturnTrue() {
        // Given
        let sut = BinarySearch()
        let list = [3, 8, 14, 33, 51, 62, 87, 91]
        let input = 1
        
        // When
        let output = sut.calculate(list: list, item: input)
        
        // Then
        XCTAssertFalse(output)
    }
}
