//
//  SonucEkraniViewController.swift
//  CalismaYapisi
//
//  Created by Hakan Gül on 9.02.2025.
//

import UIKit

class SonucEkraniViewController: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnKapat(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

