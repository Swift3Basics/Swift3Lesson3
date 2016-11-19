//: Playground - noun: a place where people can play

import UIKit

func findWays(lineLength: Int, maxStep: Int) -> Int {
    var count = 0
    var queue = [(position: 1, nextStep: 1)]
    
    while queue.count > 0 {
        
        let step = queue.popLast()!
        
        if step.position == lineLength {
            count += 1
        } else {
            
            if step.nextStep + 1 <= maxStep {
                queue.append((position: step.position, nextStep: step.nextStep + 1))
            }
            
            if step.position + step.nextStep <= lineLength {
                queue.append((position: step.position + step.nextStep, nextStep: 1))
            }
        }
    }
    
    return count
}

findWays(lineLength: 3, maxStep: 2)