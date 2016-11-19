//: Playground - noun: a place where people can play

import UIKit

protocol CanMakeNoise {
    var name : String {get}
    var noise : String {get}
    mutating func mammal()
}

class Human: CanMakeNoise {
    let name = "jack"
    let noise = "wowza"
    func mammal() {
        print("\(name) says \(noise)")
    }
}

class Pig: CanMakeNoise {
    let name = "pig"
    let noise = "oinkers"
    func mammal() {
        print("\(name) says \(noise)")
    }
}

class Cow: CanMakeNoise {
    let name = "cow"
    let noise = "mOOOOO"
    func mammal() {
        print("\(name) says \(noise)")
    }
}

let human = Human()
let pig = Pig()
let cow = Cow()

print(human.mammal())
print(pig.mammal())
print(cow.mammal())

let noiseMaker: [CanMakeNoise] = [human, pig, cow]

/*:
 **Tasks**:
 1. Uncomment above line and make the code compile. This can be achieved by implementing the `CanMakeNoise` protocol in all the classes. Think about a noise each class could make and print it to the console using `print`.
 2. Iterate over `arrayOfNoiseMaker` and let each object make their noise
 */

