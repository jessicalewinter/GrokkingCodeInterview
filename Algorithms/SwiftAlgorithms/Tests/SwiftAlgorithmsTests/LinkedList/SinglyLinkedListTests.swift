//
//  SinglyLinkedListTests.swift
//  
//
//  Created by Jessica Lewinter on 02/10/23.
//

import XCTest
@testable import SwiftAlgorithms

final class SinglyLinkedListTests: XCTestCase {

    func testFindNode_WithItemExistsOnLinkedList_ShouldReturnItem() {
        // Given
        let input = Node(value: 2)
        let sut = SinglyLinkedList(head: Node(value: 56))
        
        // When
        let result = sut.findNode(node: input)
        
        // Then
        XCTAssertEqual(<#T##expression1: Equatable##Equatable#>, <#T##expression2: Equatable##Equatable#>)
    }
    
    func testConvertToArray_WithHead_ShouldReturnItemsInEachNodeAsArray() {
        
    }
}
