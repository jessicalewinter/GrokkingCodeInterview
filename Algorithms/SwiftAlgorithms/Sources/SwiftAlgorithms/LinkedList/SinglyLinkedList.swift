//
//  SinglyLinkedList.swift
//  
//
//  Created by Jessica Lewinter on 02/10/23.
//

import Foundation

class Node<T> {
    let value: T
    var next: Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

struct SinglyLinkedList<T: Equatable> {
    var head: Node<T>?
    let length: Int
    
    init(head: Node<T>?, length: Int = 0) {
        self.head = head
        self.length = length
    }
    
    // Insert on head
    mutating func insertAtBegin(value: T) {
        let node = Node(value: value)
        
        var current = head
        head = node
        head?.next = current
    }
    
    mutating func insert(at index: Node<T>) {
        
    }
    
    // Insert on linkedList
    mutating func append(value: T) {
        let node = Node(value: value)
        
        
        if head == nil {
            head = node
        } else {
            var current = head
            
            while current != nil {
                
            }
        }
    }
    
    func peek() -> T? {
        return head?.value
    }
    
    func findNode(node: Node<T>) -> Node<T>? {
        var current = head
        
        while current != nil {
            if current?.value == node.value {
                return node
            }
            current = head?.next
        }
        
        return nil
    }
    
    /// Time Complexity: O(n)
    func traverse() {
        var current = self.head
        
        while current != nil {
            print("Item: \(String(describing: current))")
            current = head?.next
        }
    }
    
    func convertToArray() -> [T] {
        var list: [T] = []
        var current = self.head
        
        while current != nil {
            list.append(current!.value)
            current = head?.next
        }
        
        return list
    }
}
