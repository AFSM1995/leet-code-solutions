//
//  Created by Álvaro Santillan on 8/20/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://leetcode.com/problems/add-binary/submissions/
//

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var solution = String()
        var aCopy = a
        var bCopy = b
        var carry: Character = "0"

        while aCopy.count != 0 || bCopy.count != 0 {
            var currentA: Character = "0"
            var currentB: Character = "0"

            if aCopy.count == 0 {
                currentA = "0"
            } else {
                currentA = aCopy.removeLast()
            }

            if bCopy.count == 0 {
                currentB = "0"
            } else {
                currentB = bCopy.removeLast()
            }

            if carry == "1" && currentA == "1" && currentB == "1" {
                solution.append("1")
                carry = "1"
            } else if carry == "1" && currentA == "0" && currentB == "1" {
                solution.append("0")
                carry = "1"
            } else if carry == "1" && currentA == "1" && currentB == "0" {
                solution.append("0")
                carry = "1"
            } else if carry == "1" && currentA == "0" && currentB == "0" {
                solution.append("1")
                carry = "0"
            } else if carry == "0" && currentA == "1" && currentB == "1" {
                solution.append("0")
                carry = "1"
            } else if carry == "0" && currentA == "0" && currentB == "1" {
                solution.append("1")
                carry = "0"
            } else if carry == "0" && currentA == "1" && currentB == "0" {
                solution.append("1")
                carry = "0"
            } else if carry == "0" && currentA == "0" && currentB == "0" {
                solution.append("0")
                carry = "0"
            }

        }

        if carry == "1" {
            solution.append("1")
        }

        var newSolution = String()

        while solution.count != 0 {
            newSolution.append(solution.removeLast())
        }

        return newSolution
    }
}
