//
//  Kisiler.swift
//  KisilerUygulamasi
//
//  Created by Hakan Gül on 22.02.2025.
//

import Foundation


class Kisiler {
    var id:Int?
    var ad:String?
    var telefon:String?
    
    init() {
        
    }
    
    init(id: Int, ad: String, telefon: String) {
        self.id = id
        self.ad = ad
        self.telefon = telefon
    }
}
