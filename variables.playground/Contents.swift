import UIKit

// VARIABLES AND CONSTANTS

// Variables can be changed after they are assigned
var name = "John"
let surname = "Doe"

//print(name + " " + surname)

// let can not be change after it is assigned
let pi = 3.14
//pi = 3.1415

var city: String = "Houston"
print(type(of: city))


//String and String Interpolation

var lang = "Swift"

let greeting = "Hello " + lang + " World"

lang.append(" Programming")

print(lang)

//String Interpolation
let name1 = "Alice"
let age = 25
let height = 5.9

let introduction = "My name is \(name1), I am \(age) years old and \(height) feet tall."
