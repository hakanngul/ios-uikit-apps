//
//  DetaySayfa.swift
//  FilmlerApp
//
//  Created by Hakan Gül on 11.03.2025.
//

import UIKit

class DetaySayfa: UIViewController {

    @IBOutlet weak var labelFilmAdi: UILabel!
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var film: Filmler?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film {
            labelFiyat.text = "\(f.fiyat!) ₺"
            labelFilmAdi.text = f.ad
            imageViewFilm.image = UIImage(named: f.resim!)
        }
    }
    

}
