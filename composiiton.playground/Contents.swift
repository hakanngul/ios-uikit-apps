import Cocoa


class Kategoriler {
    var id:Int?
    var ad:String?
    
    init(id:Int, ad:String) {
        self.id = id
        self.ad = ad
    }
    
}

class Yonetmenler {
    var id:Int?
    var ad:String?
    
    init(id:Int, ad:String) {
        self.id = id
        self.ad = ad
    }

}

class Filmler {
    var id:Int?
    var ad:String?
    var yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(id: Int? = nil, ad: String? = nil, yil: Int? = nil, kategori: Kategoriler? = nil, yonetmen: Yonetmenler? = nil) {
        self.id = id
        self.ad = ad
        self.yil = yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(id: 1, ad: "Dram")
let k2 = Kategoriler(id: 2, ad: "Komedi")

let y1 = Yonetmenler(id: 1, ad: "Quentin Tarantino")
let y2 = Yonetmenler(id: 2, ad: "Christopher Nolan")

let f1 = Filmler(id: 1, ad: "Pulp Fiction", yil: 1994, kategori: k1, yonetmen: y1)
let f2 = Filmler(id: 2, ad: "Inception", yil: 2010, kategori: k2, yonetmen: y2)
let f3 = Filmler(id: 3, ad: "The Dark Knight", yil: 2008, kategori: k1, yonetmen: y2)
let f4 = Filmler(id: 4, ad: "The Hateful Eight", yil: 2015, kategori: k1, yonetmen: y1)

let filmler = [f1, f2, f3, f4]

//let dramaFilmleri = filmler.filter({ $0.kategori?.ad == "Dram" })
//dramaFilmleri.forEach({ print($0.ad!) })
//
//let nolanFilmleri = filmler.filter({ $0.yonetmen?.ad == "Christopher Nolan" })
//nolanFilmleri.forEach({ print($0.ad!) })


filmler.forEach({
    print("Film Id  : " , $0.id!)
    print("Film Adı : " ,$0.ad!)
    print("Film Yılı :" ,$0.yil!)
    print("Film Kategorisi :" ,$0.kategori!.ad!)
    print("Film Yönetmeni :",$0.yonetmen!.ad!)
    print("********")
    
})
