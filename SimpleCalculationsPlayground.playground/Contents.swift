//: Playground - noun: a place where people can play

import UIKit

func simpleCalculations(a0: Double, aNPlusOne: Double, N: Int, C: [Double]) -> Double {
    
    var rightPart: Double = aNPlusOne
    
    for i in 1...N {
        let Ci = C[N - i]
        rightPart -= Double(i * 2) * Ci
    }
    
    let alpha: Double = 2 + (Double(N) - 1)
    let beta: Double = -1 - (Double(N - 1) - 0)
    
    return (rightPart - beta * a0) / alpha
}

let C: [Double] = [1, 2, 3, 4, 5]
let a0: Double  = 0
let aNPlusOne: Double = 6
simpleCalculations(a0: a0, aNPlusOne: aNPlusOne, N: 5, C: C)
