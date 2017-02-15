//: # Your goal
//: ![goal](scenario.png "Your goal")
/*:
 ## Notes:
 * the image is exactly 500 pixels wide by 400 pixels high
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![assistanteditor](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 500, height: 400)

// Draw a circle in the middle of the canvas without a fill
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 5
canvas.fillColor = Color(hue: 195, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 400)

//x loop
canvas.defaultLineWidth = 5
for x in stride(from: 0, through: 500, by: 50) {
    if x % 100 == 0 {
        canvas.lineColor = Color.yellow
    } else {
        canvas.lineColor = Color.orange
    }
    canvas.drawLine(fromX: 0, fromY: 400, toX: x, toY: 0)
}


//y loop
for y in stride(from: 0, through: 400, by: 50) {
    if y % 100 == 0 {
        canvas.lineColor = Color.yellow
    } else {
        canvas.lineColor = Color.orange
    }
    canvas.drawLine(fromX: 0, fromY: 400, toX: 500, toY: y)
}
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.yellow
canvas.drawEllipse(centreX: 0, centreY: 400, width: 100, height: 100)

canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 450, centreY: 400, width: 100, height: 100)
canvas.drawEllipse(centreX: 500, centreY: 350, width: 100, height: 100)

//rainbow
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 25
canvas.borderColor = Color.red
canvas.drawEllipse(centreX: 250, centreY: 0, width: 475, height: 400)
canvas.borderColor = Color.orange
canvas.drawEllipse(centreX: 250, centreY: 0, width: 425, height: 360)
canvas.borderColor = Color.yellow
canvas.drawEllipse(centreX: 250, centreY: 0, width: 375, height: 320)
canvas.borderColor = Color.green
canvas.drawEllipse(centreX: 250, centreY: 0, width: 325, height: 280)
canvas.borderColor = Color.blue
canvas.drawEllipse(centreX: 250, centreY: 0, width: 275, height: 240)
canvas.borderColor = Color.purple
canvas.drawEllipse(centreX: 250, centreY: 0, width: 225, height: 200)

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
