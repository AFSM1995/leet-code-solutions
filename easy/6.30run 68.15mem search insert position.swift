//
//  Created by Álvaro Santillan on 8/20/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/search-insert-position/submissions/
//

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var insertLocation = 0
    
    for (index, i) in nums.enumerated() {
        if i < target {
            insertLocation += 1
        } else if i == target {
            return index
        } else {
            return insertLocation
        }
    }
    return insertLocation
    }
}
