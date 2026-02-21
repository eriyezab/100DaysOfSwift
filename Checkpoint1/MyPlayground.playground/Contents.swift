import Cocoa
import Foundation

// Day 1
var greeting = "Hello, playground"
let myName = "Eriyeza"

print(greeting)
greeting = "Yo"
print(greeting)
print(1.2 + 2.1)
let num1 = 0.1
let num2 = 0.2
print(num1 + num2)

// Day 2
var jobFinished = false
while !jobFinished {
    print("Is job finished? I don't think so")
    jobFinished.toggle()
}
print("Job finished")

// Checkpoint 1
let prompt = """
    This program converts a temperature in Celsius to
    Fahrenheit. 
    """
print(prompt)
let celsius = 18.0
print("You entered \(celsius) Celsius")
let fahreneit = celsius * 1.8 + 32.0
print("That is equal to \(fahreneit) Fahrenheit.")


