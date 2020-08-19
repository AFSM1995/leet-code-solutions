//
//  Created by Álvaro Santillan on 8/19/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/palindrome-number/submissions/
//

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var newX = abs(x)
        var reverserX = Int()
        
        while newX != 0 {
            reverserX = (reverserX * 10) + (newX%10)
            newX = newX/10
        }
        
        if reverserX == x {
            return true
        } else {
            return false
        }
    }
}
