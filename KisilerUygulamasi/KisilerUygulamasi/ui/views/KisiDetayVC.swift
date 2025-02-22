//
//  KisiDetayVC.swift
//  KisilerUygulamasi
//
//  Created by Hakan Gül on 22.02.2025.
//

import UIKit

class KisiDetayVC: UIViewController {

    @IBOutlet weak var tfKisiTel: UITextField!
    @IBOutlet weak var tfKisiAd: UITextField!
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            tfKisiAd.text = k.ad
            tfKisiTel.text = k.telefon
        }

    }
    

    @IBAction func btnGuncelle(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text, let k = kisi {
            guncelle(id: k.id!, ad: ka, tel: kt)
        }
    }
    

    
    func guncelle(id:Int, ad:String, tel:String) {
        print("Kişi Güncelle : \(id) - \(ad) - \(tel)")
    }
}
