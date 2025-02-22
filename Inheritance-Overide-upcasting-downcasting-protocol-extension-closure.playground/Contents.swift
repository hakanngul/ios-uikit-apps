import Cocoa

//class Ev {
//    var pencereSayisi:Int?
//    init(pencereSayisi: Int?) {
//        self.pencereSayisi = pencereSayisi
//    }
//}
//
//class Saray : Ev {
//    var kuleSayisi:Int?
//    init(kuleSayisi: Int?, pencereSayisi: Int?) {
//        self.kuleSayisi = kuleSayisi
//        super.init(pencereSayisi: pencereSayisi)
//    }
//}
//
//class Villa : Ev {
//    var garajVarmi:Bool?
//    init(garajVarmi: Bool?, pencereSayisi: Int?) {
//        self.garajVarmi = garajVarmi
//        super.init(pencereSayisi: pencereSayisi)
//    }
//}


//let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
//let villa = Villa(garajVarmi: true, pencereSayisi: 30)
//
//print(topkapiSarayi.pencereSayisi!)
//print(topkapiSarayi.kuleSayisi!)
//print("*******")
//print(villa.pencereSayisi!)
//print(villa.garajVarmi!)

//class Animal {
//    func sound() {
//        print("Some generic animal sound")
//    }
//}
//
//class Dog: Animal {
//    override func sound() {
//        print("Bark!")
//    }
//}

//let animal: Animal = Dog()
//animal.sound()


//class Hayvan {
//    func sesCikar() {
//        print("Hayvan sesi")
//    }
//}
//
//class Memeli: Hayvan {
//
//}
//
//class Kopek: Memeli {
//    override func sesCikar() {
//        print("Hav hav!")
//    }
//}
//
//class Kedi: Memeli {
//    override func sesCikar() {
//        print("Miyav!")
//    }
//}
//
//let hayvan = Hayvan()
//hayvan.sesCikar()
//
//let memeli = Memeli()
//memeli.sesCikar()
//
//let kopek: Hayvan = Kopek()
//kopek.sesCikar()
//
//let kedi : Hayvan = Kedi()
//kedi.sesCikar()


protocol Tasit {
    func hareketEt()
}

class Araba: Tasit {
    func hareketEt() {
        print("Araba hareket ediyor")
    }
    func calistir() {
            print("Araba çalıştırılıyor")
        }
}

class Bisiklet: Tasit {
    func hareketEt() {
        print("Bisiklet hareket ediyor")
    }
    func pedalCevir() {
        print("Pedal çevriliyor")
    }
}
//let tasitlar: [Tasit] = [Araba(), Bisiklet()]
//tasitlar.forEach{$0.hareketEt()}

let tasitlar: [Tasit] = [Araba(), Bisiklet(), Araba()]

for tasit in tasitlar {
    tasit.hareketEt()
    
    if let araba = tasit as? Araba {
        araba.calistir()
    } else if let bisiklet = tasit as? Bisiklet {
        bisiklet.pedalCevir()
    }
}


for tasit in tasitlar {
    if tasit is Araba {
        print("Bu bir araba")
    } else if tasit is Bisiklet {
        print("Bu bir Bisiklet")
    }
}












