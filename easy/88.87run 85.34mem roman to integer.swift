//
//  Created by Álvaro Santillan on 8/19/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/roman-to-integer/submissions/
//

class Solution {
    func romanToInt(_ s: String) -> Int {
        var newS = s
        var solution = Int()
        
        while newS != "" {
            let leftLetter = newS.removeFirst()
            var copy = newS
            var rightLetter: Character = "_"
            if newS != "" {
                rightLetter = copy.removeFirst()
            }
            
            switch leftLetter {
                case "I":
                    if rightLetter == "V" {
                        solution += 4
                        newS.removeFirst()
                    } else if rightLetter == "X" {
                        solution += 9
                        newS.removeFirst()
                    } else {
                        solution += 1
                    }
                case "V":
                    solution += 5
                case "X":
                    if rightLetter == "L" {
                        solution += 40
                        newS.removeFirst()
                    } else if rightLetter == "C" {
                        solution += 90
                        newS.removeFirst()
                    } else {
                        solution += 10
                    }
                case "L":
                    solution += 50
                case "C":
                    if rightLetter == "M" {
                        solution += 900
                        newS.removeFirst()
                    } else if rightLetter == "D" {
                        solution += 400
                        newS.removeFirst()
                    } else {
                        solution += 100
                    }
                case "D":
                    solution += 500
                case "M":
                    solution += 1000
                default:
                    return 0
            }
        }
        // print(solution)
        return solution
    }
}
