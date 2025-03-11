//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Hakan Gül on 11.03.2025.
//

import UIKit

protocol HucreProtokol {
  func sepetEkle(indexPath: IndexPath)
}

class FilmlerHucre: UICollectionViewCell {

  @IBOutlet weak var labelFiyat: UILabel!
  @IBOutlet weak var imageViewFilm: UIImageView!
  var hucreProtocol: HucreProtokol?
  var indexPath: IndexPath?

  @IBAction func buttonSepeteEkle(_ sender: Any) {
    if let indexPath = indexPath {
      hucreProtocol?.sepetEkle(indexPath: indexPath)
    }
  }
}
