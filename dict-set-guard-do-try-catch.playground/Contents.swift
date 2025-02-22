import Cocoa

//var fruits = Set<String>()
//
//fruits.insert("Apple")
//fruits.insert("Banana")
//fruits.insert("Orange")
//fruits.insert("Grapes")
//fruits.insert("Cherry")
//
//
//for fruit in fruits {
//    print(fruit)
//}
//
//fruits.removeAll()
//
//print(fruits.count)

//var cities = [Int: String]()
//cities[34] = "İstanbul"
//cities[6] = "Ankara"
//cities[35] = "İzmir"
//cities[1] = "Adana"
//cities[7] = "Antalya"
//cities[16] = "Bursa"
//
//print(cities[16]!)
//
//// update value
//cities[16] = "Yeni Bursa"
//print(cities[16]!)
//print(cities)


// Guard Statement

//func kisiTanima1(ad:String) {
//    if ad == "Ali" {
//        print("Merhaba Ali")
//    } else {
//        print("Tanınmayan kişi")
//    }
//}
//
//kisiTanima1(ad: "Alix")
//
//
//func kisiTanima2(ad:String) {
//    guard ad == "Ali" else {
//        print("Tanınmayan kişi")
//        return
//    }
//    print("Merhaba Ali")
//}
//
//kisiTanima2(ad: "Alix")


// Error Handling
// 1.Compile Error : Editör hataları

//let x = 10
//x = 40 // compile error

// 2. Runtime Error (Exception) : Kod çalışırken oluşan hatalar

//let sonuc = 10/0 // runtime error
//let y = [1, 2, 3]
//print(y[4]) // runtime error

enum Hatalar: Error {
    case sifiraBolmeHatasi
}

func bolmeIslemi(sayi1: Int, sayi2: Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolmeHatasi
    }
    return sayi1 / sayi2
}

//let sonuc = try bolmeIslemi(sayi1: 10, sayi2: 2)

do {
    let sonuc = try bolmeIslemi(sayi1: 10, sayi2: 0)
    print(sonuc)
} catch Hatalar.sifiraBolmeHatasi {
    print("Sayı Sıfıra bölünemez")
}



let sonuc2 = try? bolmeIslemi(sayi1: 10, sayi2: 0) // eğer hata olursa nil döner

if let temp = sonuc2 {
    print(temp)
} else {
    print("Hata oluştu")
}
