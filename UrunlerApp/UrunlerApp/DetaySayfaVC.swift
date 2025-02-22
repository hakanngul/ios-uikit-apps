//
//  DetaySayfaVC.swift
//  UrunlerApp
//
//  Created by Hakan Gül on 22.02.2025.
//

import UIKit

class DetaySayfaVC: UIViewController {

    @IBOutlet weak var labelUrunFiyat: UILabel!
    @IBOutlet weak var imageViewUrun: UIImageView!
    
    var urun: Urunler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let u = urun {
            self.navigationItem.title = u.adi!.capitalized
            imageViewUrun.image = UIImage(named: u.resim!)
            labelUrunFiyat.text = "\(u.fiyat!) ₺"
        }
    }
    

    @IBAction func btnSepeteEkle(_ sender: Any) {
        if let u = urun {
            print("Detay Sayfa : \(u.adi!) sepete eklendi")
        }
    }

}
