//
//  Filmler.swift
//  FilmlerApp
//
//  Created by Hakan Gül on 11.03.2025.
//

import Foundation

class Filmler {
    var id:Int?
    var ad:String?
    var resim:String?
    var fiyat:Double?
    
    init(){}
    
    init(id: Int, ad: String, resim: String, fiyat: Double) {
        self.id = id
        self.ad = ad
        self.resim = resim
        self.fiyat = fiyat
    }
}
