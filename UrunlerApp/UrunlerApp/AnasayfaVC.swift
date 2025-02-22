//
//  ViewController.swift
//  UrunlerApp
//
//  Created by Hakan Gül on 22.02.2025.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var urunlerTableView: UITableView!
    
    var urunlerList = [Urunler] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urunlerTableView.delegate = self
        urunlerTableView.dataSource = self
        urunlerTableView.separatorColor = UIColor(white: 0.95, alpha: 1)
        self.dummyData()
    }
    
    func dummyData(){
        let u1 = Urunler(id: 1, adi: "Macbook Pro 14", resim: "bilgisayar", fiyat: 48000)
        let u2 = Urunler(id: 2, adi: "Rayban Clubmaster", resim: "gozluk", fiyat: 28000)
        let u3 = Urunler(id: 3, adi: "Sony ZX Series", resim: "kulaklik", fiyat: 9800)
        let u4 = Urunler(id: 4, adi: "Gio Armani", resim: "parfum", fiyat: 19000)
        let u5 = Urunler(id: 5, adi: "Casio X Series", resim: "saat", fiyat: 14000)
        let u6 = Urunler(id: 6, adi: "Dyson V10", resim: "supurge", fiyat: 36000)
        let u7 = Urunler(id: 7, adi: "Iphone 13", resim: "telefon", fiyat: 32000)
        
        urunlerList.append(u1)
        urunlerList.append(u2)
        urunlerList.append(u3)
        urunlerList.append(u4)
        urunlerList.append(u5)
        urunlerList.append(u6)
        urunlerList.append(u7)
        
    }


}


extension AnasayfaVC : UITableViewDelegate, UITableViewDataSource, HucreProtocol {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.urunlerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let urun = urunlerList[indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "urunlerHucre") as! UrunlerHucre
        
        hucre.imageViewUrun.image = UIImage(named: urun.resim!)
        hucre.labelUrunAd.text = urun.adi
        hucre.labelUrunFiyat.text = String(urun.fiyat!) + "₺"
        hucre.backgroundColor = UIColor(white: 0.95, alpha: 1)
        hucre.hucreBackground.layer.cornerRadius = 10.0
        hucre.selectionStyle = .none
        
        hucre.hucreProtocol = self
        hucre.indexPath = indexPath
        return hucre
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let urun = urunlerList[indexPath.row]
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") { action, view, bool in
            
            print("\(urun.adi!) silindi")
        }
        
        let duzenleAction = UIContextualAction(style: .normal, title: "Düzenle"){ action, view, bool in
            print("\(urun.adi!) düzenlendi")
        }
        
        return UISwipeActionsConfiguration(actions: [silAction, duzenleAction])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let urun = urunlerList[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: urun)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let urun = sender as? Urunler {
                let gidilecekVC = segue.destination as! DetaySayfaVC
                gidilecekVC.urun = urun
            }
        }
    }
    
    func sepeteEkle(indexPath: IndexPath) {
        let urun = urunlerList[indexPath.row]
        print("\(urun.adi!) sepete eklendi")
    }
}
