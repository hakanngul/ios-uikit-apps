//
//  ViewController.swift
//  iosBootcamp
//
//  Created by Hakan Gül on 6.02.2025.
//

import UIKit

class ViewController: UIViewController {

    // sayfa açıldığında ilk çalışan kısım
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Pizza"
        let apperance = UINavigationBarAppearance()
        apperance.backgroundColor = UIColor(named: "anaRenk")
        apperance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1") ?? UIColor.white, .font: UIFont(name: "Pacifico-Regular", size: 22)!]
        
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = apperance
        navigationController?.navigationBar.compactAppearance = apperance
        navigationController?.navigationBar.scrollEdgeAppearance = apperance

    }


}

