//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/21/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

//class Solution {
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l3: ListNode?
    var l1Current = l1
    var l2Current = l2
    
    if l1?.val == nil {
        if l2?.val == nil {
            return l1
        } else {
            return l2
        }
    } else if l2?.val == nil {
        return l1
    }
//    else if l1Current!.val > l2Current!.val {
//        l3.val = l2Current!.val
//        l2Current = l2Current?.next
//    } else {
//        l3.val = l1Current!.val
//        l1Current = l1Current?.next
//    }
    
    while l1Current != nil || l2Current != nil {
//        print(l1Current?.val, l2Current?.val)
        if l1Current == nil {
//            l3.val = l2Current!.val
//            l3.next = l2Current?.next
            let tempVal = l2Current!.val
            l3 = addNode(l3: l3!, node: ListNode(tempVal))
            l2Current = l2Current?.next
        } else if l2Current == nil {
            let tempVal = l1Current!.val
            l3 = addNode(l3: l3!, node: ListNode(tempVal))
            l1Current = l1Current?.next
        } else if l1Current!.val > l2Current!.val {
//            l3.val = l2Current!.val
//            l3.next = l2Current?.next
            let tempVal = l2Current!.val
            l3 = addNode(l3: l3!, node: ListNode(tempVal))
            l2Current = l2Current?.next
        } else {
//            l3.val = l1Current!.val
//            l3.next = l1Current?.next
            let tempVal = l1Current!.val
            l3 = addNode(l3: l3!, node: ListNode(tempVal))
            l1Current = l1Current?.next
        }
    }
    return l3
}

func addNode(l3: ListNode, node: ListNode?) -> ListNode {
    var newl3 = l3
    
    while newl3.next != nil {
//        print(newl3.val)
        newl3 = newl3.next!
    }
    
    newl3.next = node
    return l3
}
//}

var listOne = ListNode()
listOne.val = 2
//listOne.next = ListNode(2)
//listOne.next?.next = ListNode(3, nil)

var listTwo = ListNode()
listTwo.val = 1
//listTwo.next = ListNode(3)
//listTwo.next?.next = ListNode(4, nil)

var nodee = ListNode()
nodee.val = 22

//addNode(l3: listOne, node: nodee)

print(mergeTwoLists(listOne, listTwo))


