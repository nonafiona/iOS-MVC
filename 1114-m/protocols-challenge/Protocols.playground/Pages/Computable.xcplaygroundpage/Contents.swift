//: [Previous](@previous)

import Foundation

protocol Computable {
    func compute() -> Int
}


class Sum: Computable {
  var numbers = [1,2,3,4,5,6,7,8,9]
    
    func compute() -> Int {
        var sum = 0
        for number in numbers {
            sum = sum + number
        }
        return sum
    }
}

class Product : Computable{
  var numbers = [1,2,3,4,5,6,7,8,9]
    
    func compute() -> Int {
        var product = 0
        for number in numbers {
            product = product * number
        }
        return product
    }
}

class CountCharacters: Computable {
  var string: String = "odinfeoivneflndwcnervbunlinwe;dqwmid"
    func compute() -> Int {
        var stringCount = string.characters.count
    }
    return stringCount
}

class Random {
  
}

let sum = Sum()
let product = Product()
let countCharacters = CountCharacters()
let random = Random()

let arrayOfComputables = [sum, product, countCharacters, random]

/*:
 **Tasks**: 
 1. Uncomment above line and make the code compile (by implementing the `Computable` protocol in all the classes)
 2. Iterate over `arrayOfComputables`, _compute_ each result and print it to the console using `print`
 */

