import UIKit

var greeting = "Hello, playground"

let add : (Int, Int) -> Int = {
    return $0 + $1
}

let add2 : (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}

add(5, 3)
add2(2, 6)

let multiply : (Int, Int) -> Int = {
    return $0 * $1
}

multiply(5, 3)

// TRAILING CLOSURES SYNTAX

func performAction(action: () -> Void) {
    action()
}

performAction {
    print("Action performed")
}

// CAPTURING VALUES IN CLOSURES

func makrIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    return {
        total += incrementAmount
        return total
    }
}

var res = makrIncrementer(incrementAmount: 2)

print(res())
