//
//  OyunEkraniViewController.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 9.02.2025.
//

import UIKit

class OyunEkraniViewController: UIViewController {

  @IBOutlet weak var mesajLbl: UILabel!
  @IBOutlet weak var labelOyunEkrani: UILabel!

  var kisi: Kisiler?

  override func viewDidLoad() {
    super.viewDidLoad()

    if let k = kisi {
      print("*************** Oyun Ekrani *****************")
      print("Kişi Adı: \(k.ad!)")
      print("Kişi Yaş: \(k.yas!)")
      print("Kişi Boy: \(k.boy!)")
      print("Kişi Bekar: \(k.bekarMi!)")
    }
  }

  @IBAction func btnGeri(_ sender: Any) {
    // önceki sayfaya dönüş
    navigationController?.popViewController(animated: true)  //yöntem 1
    //navigationController?.popToRootViewController(animated: true) yöntem 2

  }

  @IBAction func btnBitir(_ sender: Any) {

    performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
  }

}
