import Cocoa

var greeting = "Hello, playground"

struct Car {
    let model: String
    let numSeats: Int
    var currentGear: Int {
        didSet {
            print("Changed gear to \(currentGear) from \(oldValue)")
        }
    }
    
    mutating func changeGear(to newGear: Int) {
        if newGear <= 0 || newGear > 10 {
            print("Invalid gear (\(newGear)) to change to")
        } else {
            self.currentGear = newGear
        }
    }
    
}

var myCar = Car(model: "Nissan Murano", numSeats: 5, currentGear: 1)

myCar.changeGear(to: 3)
myCar.changeGear(to: 5)
myCar.changeGear(to: 1)
myCar.changeGear(to: -1)
