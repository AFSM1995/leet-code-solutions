//
//  Created by Álvaro Santillan on 8/21/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/merge-sorted-array/submissions/
//

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums1Pointer = 0
        var nums2Pointer = 0
        let maxSize = max(m,n)
        var solution = [Int]()

        if m == 0 {
            if n == 0 {
                return
            } else {
                nums1 = nums2
                return
            }
        } else if n == 0 {
            return
        }

        while nums1Pointer != maxSize || nums2Pointer != maxSize {
            if nums1Pointer == m && nums2Pointer == n {
                break
            } else if nums1Pointer+1 > m {
                solution.append(nums2[nums2Pointer])
                nums2Pointer += 1
            } else if nums2Pointer+1 > n {
                solution.append(nums1[nums1Pointer])
                nums1Pointer += 1
            } else if nums1[nums1Pointer] > nums2[nums2Pointer] {
                solution.append(nums2[nums2Pointer])
                nums2Pointer += 1
            } else {
                solution.append(nums1[nums1Pointer])
                nums1Pointer += 1
            }
        }
        nums1 = solution
    }
}
