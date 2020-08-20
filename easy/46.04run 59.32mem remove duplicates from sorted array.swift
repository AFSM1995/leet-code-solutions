//
//  Created by Álvaro Santillan on 8/20/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/remove-duplicates-from-sorted-array/submissions/
//

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 {
            return nums.count
        }
        var currentNumber = nums[0]
        var currentLocation = 1

        for (index, i) in nums.enumerated() {
            if index != 0 {
                if i != currentNumber {
                    currentNumber = i
                    currentLocation += 1
                } else {
                    nums.remove(at: currentLocation)
                }
            }
        }

        return nums.count
    }
}
