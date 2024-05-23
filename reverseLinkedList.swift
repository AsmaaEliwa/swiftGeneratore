//
//  reverseLinkedList.swift
//  swiftGeneratore
//
//  Created by asmaa gamal  on 23/05/2024.
//

import Foundation
//Given the head of a singly linked list, reverse the list and return the reversed list
func reverseLinkedList(head:LinkedList)->LinkedList{    // 1,2,3
    var current:LinkedList? = head
    var prev:LinkedList? = nil
    while current != nil {
        let nextNode = current?.next
        current?.next = prev
        prev = current
        current = nextNode
    }
    return current ?? LinkedList(val: 0)
}
let node3 = LinkedList(val: 3)
let node2 = LinkedList(val: 2)
let node1 = LinkedList(val: 1)
node1.next = node2
node1.next?.next = node3
reverseLinkedList(head: node1)
print(node3.next?.next?.value)
