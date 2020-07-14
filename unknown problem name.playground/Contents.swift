import UIKit

let matrix =
[[1, 0, 1, 0, 0],
[1, 0, 1, 1, 1],
[1, 1, 1, 1, 1],
[1, 0, 0, 1, 0]]

let rowWidth = 4
let columWidht = 3
var vainEnded = false

var rightGood = false
var downGood = false
var diagnalGood = false

var biggestSquare = 1

func checkIfValid(right: Bool, down: Bool, diagnal: Bool) -> Bool {
    if rightGood == true {
        if downGood == true {
            if diagnalGood == true {
                return true
            }
        }
    }
    return false
}

func naborChecker(XIndex: Int, YIndex: Int) -> Bool {
    if (XIndex+1) <= 4 && (YIndex+1 <= 3) {
        rightGood = false
        downGood = false
        diagnalGood = false
        
        if matrix[YIndex][XIndex+1] == 1 {
            rightGood = true
        }
        if matrix[YIndex+1][XIndex+1] == 1 {
            diagnalGood = true
        }
        if matrix[YIndex+1][XIndex] == 1 {
            downGood = true
        }
        return checkIfValid(right: rightGood, down: downGood, diagnal: diagnalGood)
    }
    return false
}

func findSquare(XIndex: Int, YIndex: Int) -> Int {
    if matrix[YIndex][XIndex] == 1 {
        if naborChecker(XIndex: XIndex, YIndex: YIndex) == true {
            biggestSquare = biggestSquare + 1
//            let tempRight = findSquare(XIndex: XIndex, YIndex: YIndex+1)
//            let tempDie = findSquare(XIndex: XIndex+1, YIndex: YIndex+1)
//            let tempDown = findSquare(XIndex: XIndex+1, YIndex: YIndex)
//            if checkIfValid(right: tempRight, down: tempDown, diagnal: tempDie) == true {
//                findSquare(XIndex: XIndex+1, YIndex: YIndex+1)
//            }

        } else {
            return biggestSquare
        }
    }
    return biggestSquare
}

for (YIndex, i) in matrix.enumerated() {
    for (XIndex, _) in i.enumerated() {
        print(findSquare(XIndex: XIndex, YIndex: YIndex))
    }
}
