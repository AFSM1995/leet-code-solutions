//
//  Created by Álvaro Santillan on 8/20/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/valid-parentheses/submissions/
//

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count%2 != 0 {
            return false
        }
        
        var newS = s
        var reverse = String()
        
        while newS.count != 0 {
            let next = newS.removeFirst()
            
            if next == "(" {
                reverse.append(")")
            } else if next == "[" {
                reverse.append("]")
            } else if next == "{" {
                reverse.append("}")
            } else if reverse.count != 0 && next != reverse.removeLast() {
                return false
            }
        }
        if reverse.count == 0 {
            return true
        } else {
            return false
        }
    }
}
