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

var roll = 0

while roll != 7 {
    roll = Int.random(in: 2...12)
    print("I rolled a \(roll)")
}

print("Robber Time")

// Checkpoint 3

for i in 1...100 {
    var fizzbuzz = "\(i) "
    if i.isMultiple(of: 3) {
        fizzbuzz += "fizz"
    }
    if i.isMultiple(of: 5) {
        fizzbuzz += "buzz"
    }
    print(fizzbuzz)
}
