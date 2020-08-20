//
//  Created by Álvaro Santillan on 8/19/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/reverse-integer/submissions/
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var newX = x
        var result = Int()

        while newX != 0 {
            result = (result * 10) + (newX%10)
            newX = newX/10
        }

        if result < 2147483647 && result > -2147483648 {
            return result
        } else {
            return 0
        }
    }
}
