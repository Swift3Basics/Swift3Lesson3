//: Playground - noun: a place where people can play

import UIKit

func parse(text: String) -> (maxLength: Int, numberOfWords: Int) {
    var result = (maxLength: 0, numberOfWords: 0)
    var word = ""
    var inBrackets = false
    
    for symbol in text.characters {
        
        switch symbol {
        case "_", "(", ")":
            if word.characters.count > 0 {
                if inBrackets {
                    result.numberOfWords += 1
                } else {
                    result.maxLength = max(result.maxLength, word.characters.count)
                }
                
                word = ""
            }
            
            if ["(", ")"].contains(String(symbol)) {
                inBrackets = !inBrackets
            }
        default:
            word.append(symbol)
        }
        
    }
    
    result.maxLength = max(result.maxLength, word.characters.count)
    
    return result
}

parse(text: "___Bye_Hello(Some_)")