//: Playground - noun: a place where people can play

import UIKit

func filter(data: [Int], action: (Int) -> Bool) -> [Int] {
    var result = [Int]()
    
    for value in data {
        if action(value) {
            result.append(value)
        }
    }
    
    return result
}

filter(data: [2, 5, 10, 0]) {
    value in
    return value % 5 == 0
}
