import Cocoa

var greeting = "Hello, playground"
var theme = "White"
print(theme == "Black" ? greeting : "Hello, world!")

enum Lifts {
    case squat, bench, deadlift
}

var lift: Lifts = .bench
//var lift: Lifts = .squat

switch lift {
case .squat:
    print("Implemented")
default:
    print("Not implemented")
}
