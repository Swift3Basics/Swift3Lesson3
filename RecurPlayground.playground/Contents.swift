//: Playground - noun: a place where people can play

import UIKit

func fib(first a: Int, second b: Int, remain: Int) -> Int {
    
    if remain == 1 {
        return a + b
    } else {
        return fib(first: b, second: a + b, remain: remain - 1)
    }
}

func fibonacci(n: Int) -> Int {
    
    var result = 0
    
    switch n {
    case 1:
        break
    case 2:
        result = 1
    default:
        result = fib(first: 0, second: 1, remain: n - 2)
    }
    
    return result
}

fibonacci(n: 5)