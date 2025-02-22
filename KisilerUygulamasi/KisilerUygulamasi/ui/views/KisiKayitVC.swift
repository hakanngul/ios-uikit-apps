//
//  KisiKayitVC.swift
//  KisilerUygulamasi
//
//  Created by Hakan Gül on 22.02.2025.
//

import UIKit

class KisiKayitVC: UIViewController {

    @IBOutlet weak var tfKisiTel: UITextField!
    @IBOutlet weak var tfKisiAd: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func btnKaydet(_ sender: Any) {
        if let kisi_ad = tfKisiAd.text, let kisi_tel = tfKisiTel.text{
            kaydet(ad: kisi_ad, tel: kisi_tel) 
        }
        
    }
    
    
    func kaydet(ad:String, tel:String){
        print("Kişi Kaydet : \(ad) - \(tel)")
    }
    
}
