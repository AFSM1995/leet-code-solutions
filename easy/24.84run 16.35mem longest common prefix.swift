//
//  Created by Álvaro Santillan on 8/20/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/longest-common-prefix/submissions/
//

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var solution = String()
        
        if strs.count == 0 {
            return solution
        } else if strs.count == 1 {
            return strs[0]
        }
        var strsCopy = strs
        
//        print(solution.removeFirst())
        var exit = false
        
        while exit != true {
            for (index, _) in strsCopy.enumerated() {
                if index == 0 && strsCopy[index].count != 0 {
                    solution.append(strsCopy[index].removeFirst())
                } else if strsCopy[index].count == 0 {
                    if solution.count >= 1 {
                        solution.removeLast()
                    }
                    return solution
                } else if strsCopy[index].removeFirst() != solution.last {
                    solution.removeLast()
                    return solution
                }
            }
            if strsCopy[0].count == 0 {
                return solution
            }
        }
        return solution
    }
}
