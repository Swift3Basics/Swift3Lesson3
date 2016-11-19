//: Playground - noun: a place where people can play

import UIKit

func mathFunc(for operation: Character) -> ((Double, Double) -> Double)? {
    
    func plus(opOne: Double, opTwo: Double) -> Double {
        return opOne + opTwo
    }
    
    func minus(opOne: Double, opTwo: Double) -> Double {
        return opOne - opTwo
    }
    
    func mult(opOne: Double, opTwo: Double) -> Double {
        return opOne * opTwo
    }
    
    switch operation {
    case "+":
        return plus
    case "-":
        return minus
    case "*":
        return mult
    default:
        return nil
    }
}

func parse(statement: String) -> Double {
    var operation = ""
    var result: Double = 0
    var number = ""
    
    for symbol in statement.characters {
        switch symbol {
        case "-", "+":
            if number.characters.count == 0 {
                number.append(symbol)
            } else {
                let rightOperand = Double(number)!
                number = ""
                
                if result == 0 {
                    result = rightOperand
                } else {
                    if let f = mathFunc(for: operation.characters[operation.startIndex]) {
                        result = f(result, rightOperand)
                    }
                }
                
                operation = String(symbol)
            }
        
        case "*":
            operation = String(symbol)
            
        default:
            number.append(symbol)
        }
    }
    
    if number.characters.count > 0 && operation.characters.count != 0 {
        let rightOperand = Double(number)!
        if let f = mathFunc(for: operation.characters[operation.startIndex]) {
            result = f(result, rightOperand)
        }
        
    }
    
    return result
}

parse(statement: "5+5+20")