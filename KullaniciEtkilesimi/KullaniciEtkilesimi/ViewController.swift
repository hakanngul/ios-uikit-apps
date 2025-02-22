//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Hakan Gül on 16.02.2025.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj İçeriği", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            
            print("İptal Edildi.")
            
        }
        
        
        let approveAction = UIAlertAction(title: "OK", style: .destructive)
        alertController.addAction(cancelAction)
        alertController.addAction(approveAction)

        self.present(alertController, animated: true)
    }

    @IBAction func btnActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj İçeriği", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            
            print("İptal Edildi.")
            
        }
        
        
        let approveAction = UIAlertAction(title: "OK", style: .destructive)
        alertController.addAction(cancelAction)
        alertController.addAction(approveAction)

        self.present(alertController, animated: true)
        
        
    }
    
    
    @IBAction func btnOzelAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj İçeriği", preferredStyle: .alert)
        
        alertController.addTextField { textField in
            
            textField.placeholder = "Veri giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
            
        }
          
        alertController.addTextField()
        
        let approveAction = UIAlertAction(title: "Kaydet", style: .cancel) { action in
            
            let tf = alertController.textFields![0] as UITextField
            let tf1 = alertController.textFields![1] as UITextField
            
            if let alinanVeri = tf.text, let alinanVeri1 = tf1.text {
                print("Veri : \(alinanVeri) - \(alinanVeri1)")
            }
            
        }
        alertController.addAction(approveAction)

        self.present(alertController, animated: true)
        
    }
}

