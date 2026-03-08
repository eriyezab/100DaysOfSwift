import Cocoa

var greeting = "Hello, playground"

// Checkpoint 7
class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        
    }
}

class Dog: Animal {
    let breed: String
    init(breed: String, legs: Int) {
        self.breed = breed
        super.init(legs: legs)
    }
    override func speak() {
        print("woof")
    }
}

class Corgi: Dog {}
class Poodle: Dog {}

class Cat: Animal {
    let isTame: Bool
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Lion: Cat {
    init() {
        super.init(isTame: false, legs: 4)
    }
    
    override func speak() {
        print("ROAAAAAAAAR")
    }
}

class Persian: Cat {
    init() {
        super.init(isTame: true, legs: 4)
    }
    
    override func speak() {
        print("meow")
    }
}

var animals = [Animal]()
let corgi = Corgi(breed: "Corgi", legs: 4)
let poodle = Corgi(breed: "Poodle", legs: 4)
let simba = Lion()
let natsuki = Persian()
animals.append(corgi)
animals.append(poodle)
animals.append(simba)
animals.append(natsuki)

for animal in animals {
    animal.speak()
}

