//
//  Urunler.swift
//  UrunlerApp
//
//  Created by Hakan Gül on 22.02.2025.
//

import Foundation

class Urunler {
    var id:Int?
    var adi:String?
    var resim:String?
    var fiyat:Double?
    
    init() {
        
    }
    
    
    init(id: Int, adi: String, resim: String, fiyat: Double) {
        self.id = id
        self.adi = adi
        self.resim = resim
        self.fiyat = fiyat
    }
}
