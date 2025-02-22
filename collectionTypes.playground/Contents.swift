import Cocoa

//var emptyArray: [String] = []
//
//var fruits = ["Apple", "Banana", "Orange" , "Grapes", "Cherry"]
//
//fruits.append("Melon")
//
//
//fruits.remove(at: 1)
//
//
//for fruit in fruits {
//    print(fruit)
//}
//
//
//var emptySet: Set<Int> = []
//
//var uniqueNumbers: Set<Int> = [1, 2, 3, 3, 2]
//
//uniqueNumbers.insert(4)
//uniqueNumbers.remove(2)
//
//if uniqueNumbers.contains(3) {
//    print("Set contains 3")
//}
//
//var emptyDict: [String: Int] = [:]
//var studentScores = ["Alice": 85, "Bob": 90, "Charlie": 78]
//
//studentScores["David"] = 92
//studentScores["Alice"] = 95
//
//studentScores.removeValue(forKey: "Bob")
//for (student, score) in studentScores {
//    print("\(student): \(score)")
//}

func printArray<T>(_ array: [T]) -> Void {
    // print array with index
    for (index, item) in array.enumerated() {
        print("\(index): -> \(item)")
    }
}

var numaralar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var meyveler = [String]()

meyveler.append("Elma")
meyveler.append("Armut")
meyveler.append("Muz")
meyveler.append("Kivi")

printArray(meyveler)
print("*******")
meyveler.removeAll()
meyveler.append("Çilek")
printArray(meyveler)

