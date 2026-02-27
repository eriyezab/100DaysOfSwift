import Cocoa

var greeting = "Hello, playground"

var nums = [Int]()
nums.append(1)
nums.append(3)
nums.append(2)
nums.append(10)
nums.append(9)

print(nums)
print(nums.reversed())
print(nums.sorted())

let details: [String:Any] = [
    "name": "Yeezy",
    "Age": 25,
    "Country": "Canada",
    "City": "Regina",
    "Male": true
]

print(details["name", default: "Unknown"])
print(details["Age", default: -1])
print(details["City", default: "Unknown City"])

enum Modes {
    case jump, lift, sprint
}

enum Lifts {
    case squat, bench, deadlift, clean
}

let supportedLifts: Set<Lifts> = [.squat, .deadlift]

