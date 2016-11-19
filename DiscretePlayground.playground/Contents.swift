//: Playground - noun: a place where people can play

import UIKit


func analyze(function: [Double]) -> Double {
    var maxK: Double! = nil
    
    for i in 0..<function.count {
        for j in (i + 1)..<function.count {
            let k = (function[j] - function[i]) / Double(j - i)
            let b = function[j] - k * Double(j + 1)
            
            var acceptable = true
            
            for z in 0..<function.count where z != i && z != j {
                acceptable = function[z] < k * Double(z + 1) + b
                if !acceptable {
                    break
                }
            }
            
            if acceptable {
                if maxK == nil {
                    maxK = k
                } else {
                    maxK = max(maxK, k)
                }
            }
        }
    }
    
    return maxK
}

analyze(function: [1, 2, 1.5, 1.5])
