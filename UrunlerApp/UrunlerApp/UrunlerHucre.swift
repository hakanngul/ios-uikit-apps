//
//  UrunlerHucreTableViewCell.swift
//  UrunlerApp
//
//  Created by Hakan Gül on 22.02.2025.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkle(indexPath: IndexPath)
}


class UrunlerHucre: UITableViewCell {

    @IBOutlet weak var hucreBackground: UIView!
    
    @IBOutlet weak var imageViewUrun: UIImageView!
    
    @IBOutlet weak var labelUrunAd: UILabel!
    
    @IBOutlet weak var labelUrunFiyat: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btnSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
}
