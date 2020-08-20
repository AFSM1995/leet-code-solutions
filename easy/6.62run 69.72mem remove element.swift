//
//  Created by Álvaro Santillan on 8/20/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/remove-element/submissions/
//

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var removeIndex = 0
    
        for i in nums {
            if i == val {
                nums.remove(at: removeIndex)
            } else {
                removeIndex += 1
            }
        }
        return nums.count
    }
}
