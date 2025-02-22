//
//  SayfaYViewController.swift
//  tabbarOdev
//
//  Created by Hakan Gül on 16.02.2025.
//

import UIKit

class SayfaYViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("will disappear")
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
