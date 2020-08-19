//
//  Created by Álvaro Santillan on 8/19/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/two-sum/submissions/
//

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0...(nums.count-1) {
            for j in i...(nums.count-1) {
                if (nums[i] + nums[j]) == target {
                    if i != j {
    //                    print(i,j)
                        return [i,j]
                    }
                }
            }
        }
        return [0]
    }
}

twoSum(nums: [3,2,4], target: 6)
