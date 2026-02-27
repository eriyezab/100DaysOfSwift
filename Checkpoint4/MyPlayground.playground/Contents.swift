import Cocoa

var greeting = "Hello, playground"


// Returns the bar speed in pixels per second
// the answer then needs to be converted to meters per
// second by multiplying by meters per pixel
// distance: pixel difference of the bar between startFrame and endFrame
// startFrame: the beginning frame
// endFrame: the end frame
// frameRate: the frame rate of the video
func calculateBarSpeed(distance: Int, startFrame: Int, endFrame: Int, frameRate: Int) -> Double {
    
    let seconds = Double(endFrame - startFrame) / Double(frameRate)
    let pixelsPerSecond = Double(distance) / seconds
    return pixelsPerSecond
}

print(calculateBarSpeed(distance: 100, startFrame: 0, endFrame: 87, frameRate: 30))
