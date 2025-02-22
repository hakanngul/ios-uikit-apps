import UIKit

//class Person {
//    var name: String
//    var age: Int?
//    
//    init(name: String, age: Int?) {
//        self.name = name
//        self.age = age
//    }
//}
//
//var person1 = Person(name: "Alice", age: 25)
//var person2 = Person(name: "Bob", age: nil)

//person1.age


// Optional Mapping
//let name2: String? = "Hakan GÜL"
//
//let result = name2.map { $0.count}
//print(result)


// Flat Mapping
// Explain a flatMap in turkish
// Turkish => FlatMap, bir opsiyonel değeri açmak ve başka bir opsiyonel değer döndürmek için kullanılan bir yöntemdir.
//let number: String? = "10"
//let flatMapResult = number.flatMap { Int($0) }
//print(flatMapResult)

// Associated Types

//struct Movie: Codable {
//    let title: String
//}
//
//struct User: Codable {
//    let name: String
//    }
//
//protocol WebServiceProtocol: class {
//    associatedtype Model
//    func getAll(url: URL, completion: (Result<[Model], Error>) -> Void)
//}
//
//
//class MovieService: WebServiceProtocol {
//    typealias Model = Movie
//    func getAll(url: URL, completion: (Result<[Movie], any Error>) -> Void) {
//        // Fetch movies from the server
//        
//    }
//}
//
//class UserService: WebServiceProtocol {
//    typealias Model = User
//    func getAll(url: URL, completion: (Result<[User], any Error>) -> Void) {
//        // Fetch users from the server
//    }
//}

// Generic Functions

//let names = ["Alice", "Bob", "Charlie", "David", "Eve"]
//let numbers = [1, 2, 3, 4, 5, 6]
//func firstElement(_ array: [String]) -> String? {
//    array.first
//}


//print(firstElement(names))

//if let firstName = firstElement(names) {
//    print(firstName)
//}
//
//func firstElement<T>(_ array: [T]) -> T? {
//    array.first
//}
//
//if let number = firstElement(numbers) {
//    print(number)
//}


//struct Pair<T, K> {
//    let first: T
//    let second: K
//}
//
//let pair = Pair(first: "Alice", second: 15)
//let pair2 = Pair(first: "Hello", second: "World")
//
//print(pair.first)
//print(pair.second)
//
//print(pair2.first)
//print(pair2.second)


//class Stack<T> {
//    var items = [T]()
//    
//    func push(_ item: T) {
//        items.append(item)
//    }
//    
//    func pop() -> T? {
//        items.popLast()
//    }
//}
//
//let stack = Stack<Int>()
//stack.push(1)
//stack.push(2)
//stack.push(3)
//stack.push(4)
//stack.pop()
//
//let anotherStack = Stack<String>()
//anotherStack.push("Alice")
//anotherStack.push("Bob")
//anotherStack.push("Charlie")
//anotherStack.pop()


// Generics

//struct Customer: Encodable {
//    let name: String
//}
//
//
//func encode<T: Encodable> (_ item: T) throws {
//    try JSONEncoder().encode(item)
//}
//
//
//let customer = Customer(name: "Alice")
//
//let encoded = try? encode(customer)
//
//struct UserInfo {
//    let name: String
//    
//}
//
//let userInfo = UserInfo(name: "Steven Smith")
//try? encode(userInfo)

// Generics  // Protocol == Interface in Java
//protocol Animal {
//    var name: String { get }
//    func makeSound()
//    func fly()
//    eğer burada da fly fonksiyonu olursa Bird classı
//    en yakını olan CanFly daki Fly  fonksiyonunu kullanır.
//    Swift birden fazla aynı isme sahip fonksiyonu destekler.
//}

//protocol Robot {
//    func start()
//}
//
//protocol CanFly: Animal, Robot {
//    func fly()
//}
//
//
//class Bird: CanFly {
//    var name: String
//    
//    func start() {
//        print("Robot is starting")
//    }
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    func fly() {
//        print("\(self.name) is flying")
//    
//    }
//    
//    func makeSound() {
//        print("\(self.name) is singing")
//    }
//    
//}
//
//let bird = Bird(name: "Eagle")
//bird.fly()
//bird.makeSound()
//bird.start()


// Protocol composition
//
//struct Customer: Decodable {
//    var name: String
//
//}

//struct Customer: Codable //Encodable & Decodable
//{
//    var name: String
//
//}
//
//func encode(_ item: Codable) {
//    try? JSONEncoder().encode(item)
//}
//
//let customer = Customer(name: "Alice")
//encode(customer) // Not working because Codable is a protocol composition
//
//
//protocol CanFly {
//    func fly()
//}
//
//protocol CanSwim {
//    func swim()
//}
//
//protocol CanSing {
//    func sing()
//}
//
//func performAction(_ item: CanFly & CanSwim) {
//    item.fly()
//    item.swim()
//}
//
//struct Duck: CanFly, CanSwim {
//    func fly() {
//        print("Duck is flying")
//    }
//    func swim() {
//        print("Duck is swimming")
//    }
//}
//
//let duck = Duck()
//duck.fly()
//duck.swim()
//print("*******")
//
//performAction(duck)


//protocol Animal {
//    func makeSound()
//}
//
//struct Dog: Animal {
//    func makeSound() {
//        print("Woof! Woof!")
//    }
//}
//
//struct Cat: Animal {
//    func makeSound() {
//        print("Meow! Meow!")
//    }
//}
//
//struct Duck: Animal {
//    func makeSound() {
//        print("Quack! Quack!")
//    }
//}
//
//func makeAnimalSound(_ animal: Animal) {
//    animal.makeSound()
//}
//
//
//let dog = Dog()
//makeAnimalSound(dog)
//
//let cat = Cat()
//makeAnimalSound(cat)
//
//let duck = Duck()
//makeAnimalSound(duck)


// Protocol Extensions

//protocol Animal {
//    var name: String { get }
//    func makeSound()
//}
//
//extension Animal {
//    func makeSound() {
//        print("Sound of some animal")
//    }
//}
//
//struct Dog: Animal {
//    var name: String
//    
//    func makeSound() {
//        print("Woof! Woof!")
//    }
//}
//
//struct Cat: Animal {
//    var name: String
//
//}
//
//let dog = Dog(name: "Rex")
//dog.makeSound()
//
//let cat = Cat(name: "Kitty")
//cat.makeSound()

// Raw Values in Enums

enum WeekDay: Int {
    case sunday = 1
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

print(WeekDay.sunday.rawValue)
