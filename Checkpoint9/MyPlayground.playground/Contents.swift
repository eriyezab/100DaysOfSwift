import Cocoa

var greeting = "Hello, playground"

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
// This line below is bad because number is an optional and swift won't allow you to
// put an optional as an argument when the function
// expects a nonoptional
//print(square(number: number))

if let number = number {
    print(square(number: number))
}

// The below code doesn't work as swift doesn't let
// you use if let for a variable that isn't optional
//var weatherForecast: String = "sunny"
//if let forecast = weatherForecast {
//    print("The forecast is \(forecast).")
//} else {
//    print("No forecast available.")
//}

func returnRandom(_ numbers: [Int]?) -> Int {
    numbers?.randomElement() ?? Int.random(in: 1...100)
}

var nums: [Int]? = [1,13,14,101,99,-124]
print(returnRandom(nums))
