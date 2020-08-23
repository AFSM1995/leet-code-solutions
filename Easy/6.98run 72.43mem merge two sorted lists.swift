//
//  Created by Álvaro Santillan on 8/22/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/merge-two-sorted-lists/submissions/
//

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l3 = ListNode()
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
        else if l1Current!.val > l2Current!.val {
            l3.val = l2Current!.val
            l2Current = l2Current?.next
        } else {
            l3.val = l1Current!.val
            l1Current = l1Current?.next
        }

        while l1Current != nil || l2Current != nil {
            if l2Current == nil {
                l3 = addNode(l3: l3, node: ListNode(l1Current!.val))
                l1Current = l1Current?.next
            } else if l1Current == nil || (l1Current!.val > l2Current!.val) {
                l3 = addNode(l3: l3, node: ListNode(l2Current!.val))
                l2Current = l2Current?.next
            } else {
                l3 = addNode(l3: l3, node: ListNode(l1Current!.val))
                l1Current = l1Current?.next
            }
        }
        return l3
    }

    func addNode(l3: ListNode, node: ListNode?) -> ListNode {
        var newl3 = l3

        while newl3.next != nil {
            newl3 = newl3.next!
        }

        newl3.next = node
        return l3
    }
}
