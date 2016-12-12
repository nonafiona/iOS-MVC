import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
//PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .white, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
print("Why?")

let grid = 3

let fieldSize = canvasFrame.height / 3

var coord = [100,200]


var color = -1
// nested for loop
for i in 0..<3 {
    for w in 0..<3{
        let yPos = fieldSize * CGFloat(w)
        let xPos = fieldSize * CGFloat(i)
        // 1
        let block = UIView(frame: CGRect(x: xPos, y: yPos, width: 100, height: 100))
        
        // 2
        color += 1
        block.backgroundColor = colors[color]
        // 3
        canvas.addSubview(block)
    }
}








