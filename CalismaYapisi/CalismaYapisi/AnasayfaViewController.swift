//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 8.02.2025.
//

import UIKit

class AnasayfaViewController: UIViewController {

  @IBOutlet weak var labelAnasayfa: UILabel!
    
    // Leading => Left - Start
    // Trailing => Right - End

    
    
    
    override func viewDidLoad() {
    // uygulama ilk açıldığında 1 kere çalışır ctor gibi
    super.viewDidLoad()
    labelAnasayfa.text = "Hoşgeldin"
    print("viewDidLoad metodu çalıştı")
  }

  override func viewWillAppear(_ animated: Bool) {
    // sayfa her göründüğünde çalışır
      // sayfaya geri dönüldüğünde de çalışır.
    print("viewWillAppear metodu çalıştı")
  }

  override func viewWillDisappear(_ animated: Bool) {
    // sayfa her görünmez olduğunda çalışır.
      print("viewWillDisappear metodu çalıştı")
      print("asdas")
  }
    

  @IBAction func btnYap(_ sender: Any) {
    labelAnasayfa.text = "Merhaba Hakan"
  }

  @IBAction func btnBasla(_ sender: Any) {
    let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekarMi: true)
    performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
  }

  // Sayfa üzerindeki bütün geçişleri dinliyor.
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    print("prepare metodu çalıştı")
    if segue.identifier == "oyunEkraninaGecis" {
      print("Oyun ekranına geçiş metodu çalıştı")

      if let veri = sender as? Kisiler {  // down casting
        let gidilecekVC = segue.destination as! OyunEkraniViewController
        gidilecekVC.kisi = veri
      }
    }
  }
    
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save Seçildi")
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("Add Seçildi")
    }

}
