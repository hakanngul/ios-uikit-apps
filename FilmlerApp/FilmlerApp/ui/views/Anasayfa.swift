//
//  ViewController.swift
//  FilmlerApp
//
//  Created by Hakan Gül on 11.03.2025.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmlerCollectionView.delegate = self
        filmlerCollectionView.dataSource = self
        
        let f1 = Filmler(id: 1, ad: "Django", resim: "django", fiyat: 24.0)
        let f2 = Filmler(id: 2, ad: "Interstellar", resim: "interstellar", fiyat: 29.0)
        let f3 = Filmler(id: 3, ad: "Inception", resim: "inception", fiyat: 22.0)
        let f4 = Filmler(id: 4, ad: "The Hateful Eight", resim: "thehatefuleight", fiyat: 27.0)
        let f5 = Filmler(id: 5, ad: "The Pianist", resim: "thepianist", fiyat: 27.0)
        let f6 = Filmler(id: 6, ad: "Anadoluda", resim: "anadoluda", fiyat: 18.0)
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
        
        let cevreBosluk:CGFloat = 10
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: cevreBosluk, left: cevreBosluk, bottom: cevreBosluk, right: cevreBosluk)
        
        
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        // 10 x 10 x 10 = 30
        // 15 x 10 x 10 x 15 = 50
        
        let ekranGenislik = UIScreen.main.bounds.width
        let itemGenislik =  (ekranGenislik-30)/2
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik * 1.6)
        
        filmlerCollectionView.collectionViewLayout = tasarim
        
    }


}

extension Anasayfa: UICollectionViewDelegate, UICollectionViewDataSource, HucreProtokol {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = filmlerListesi[indexPath.row]
        let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "filmlerHucre", for: indexPath) as! FilmlerHucre
        
        hucre.imageViewFilm.image = UIImage(named: film.resim!)
        hucre.labelFiyat.text = "\(film.fiyat!)₺"
        
        hucre.layer.borderColor = UIColor.lightGray.cgColor
        hucre.layer.borderWidth = 0.3
        hucre.layer.cornerRadius = 10.0
        
        hucre.hucreProtocol = self
        hucre.indexPath = indexPath
        return hucre
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("Seçilen Film: \(film.ad!)")
        performSegue(withIdentifier: "toDetay", sender: film)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let film = sender as? Filmler {
                let gidilecekVC = segue.destination as! DetaySayfa
                gidilecekVC.film = film
            }
        }
    }
    
    func sepetEkle(indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("Sepete Eklendi: \(film.ad!)")
    }
}
