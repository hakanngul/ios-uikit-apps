import UIKit

// Conditional Statements

let temperature = 98

if temperature > 80 {
    print("It is hot!")
} else if temperature < 32 {
    print("It is cold!")
} else {
    print("It is moderate!")
}


let dayOfWeek = 3

switch dayOfWeek {
case 1:
    print("Monday")
case 2:
    print("Tuesday")
case 3:
    print("Wednesday")
case 4:
    print("Thursday")
case 5:
    print("Friday")
default:
    print("Weekend")
}


// For-In Loops


var fruits = ["Apple", "Banana", "Orange", "Grapes"]

fruits.forEach({ fruit in
    print(fruit)
})

for fruit in fruits {
    print(fruit)
}

while fruits.count > 0 {
    print(fruits.removeFirst())
}
print("*******")

var attemps = 0
let maxAttemps = 3

repeat {
    print("Attemping to connect...\(attemps+1)")
    attemps += 1
} while attemps < maxAttemps
