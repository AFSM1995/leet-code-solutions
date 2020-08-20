//
//  Created by Álvaro Santillan on 8/20/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/length-of-last-word/submissions/
//

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
    if s.count == 0 {
        return 0
    } else if s.count == 1 {
        if s.first != " " {
            return 1
        } else {
            return 0
        }
    }
    
    var newS = s
    var count = 0
    
    while newS.count != 0 {
        if newS.last != " " {
            if newS.count != 0 {
                newS.removeLast()
            } else {
                return count
            }
            count += 1
        } else if count != 0 {
            return count
        } else {
            newS.removeLast()
        }
    }
    
    return count
    }
}
