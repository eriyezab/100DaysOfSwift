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

func range(_ from: Int = 0, to: Int) -> [Int] {
    if to < from {
        print("from must be smaller than to")
        return []
    }
    if from < 0 {
        print("from must be smaller than 0")
        return []
    }
    var res: [Int] = [Int]()
    for i in from..<to {
        res.append(i)
    }
    return res
}

print(range(0,to:10))
print(range(0,to:-1))
print(range(to: 10))
print(range(0,to:-1))

enum IntegerSquareRootError: Error {
    case valueTooLarge
    case valueTooSmall
    case noRoot
}

func integerSquareRoot(_ n: Int) throws -> Int {
    if n < 0 {
        throw IntegerSquareRootError.valueTooSmall
    } else if n > 10_000 {
        throw IntegerSquareRootError.valueTooLarge
    }
    else {
        var ans = 0
        for ans in 0...100 {
            if ans * ans == n {
                return ans
            }
        }
        throw IntegerSquareRootError.noRoot
    }
}

do {
    var val = try integerSquareRoot(6400)
    print(val)
} catch IntegerSquareRootError.valueTooLarge {
    print("The value is too large")
} catch IntegerSquareRootError.valueTooSmall {
    print("The value is too small")
} catch IntegerSquareRootError.noRoot {
    print("There was no integer root found for this number")
} catch {
    print("An unknown error occurred")
}





