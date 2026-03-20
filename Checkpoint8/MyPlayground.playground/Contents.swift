import Cocoa

var greeting = "Hello, playground"

// Checkpoint 8
protocol Building {
    var name: String { get set }
    var rooms: Int { get set }
    var cost: Int { get set }
    var agent: String { get set }
    func printSalesSummary()
}

extension Building {
    func printSalesSummary() {
        print("Building name: \(name), number of rooms: \(rooms), cost: \(cost), agent: \(agent)")
    }
}

struct House: Building {
    var name: String
    var rooms: Int
    var cost: Int
    var agent: String
}

struct Office: Building {
    var name: String
    var rooms: Int
    var cost: Int
    var agent: String
}

let myHouse = House(name: "123 Slater Crescent", rooms: 12, cost: 2500000, agent: "Agent E")

let myOffice = Office(name: "123 Slater Crescent, top floor room 2", rooms: 1, cost: 10000, agent:"Agent E")

myHouse.printSalesSummary()
myOffice.printSalesSummary()

