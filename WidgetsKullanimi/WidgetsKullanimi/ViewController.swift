//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Hakan Gül on 21.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var switchState: UISwitch!
    @IBOutlet weak var imgResim: UIImageView!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var segControl: UISegmentedControl!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = "\(Int(slider.value))"
        labelStepper.text = "\(Int(stepper.value))"
        indicator.isHidden = true
    }
    
   
    
    @IBAction func btnYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
            textFieldGirdi.text = ""
        }
    }
    
    @IBAction func btnMutlu(_ sender: Any) {
        imgResim.image = UIImage(named: "mutlu")
    }
    
    @IBAction func btnUzgun(_ sender: Any) {
        imgResim.image = UIImage(named: "uzgun")
    }
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        
        if sender.isOn {
            print("Switch : ON")
        } else {
            print("Switch : OFF")
        }
    }
    
    @IBAction func segDegisim(_ sender: UISegmentedControl) {
        let secilenIndex = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndex)
        print("Seçim : \(secilenKategori!)")
    }
    
    @IBAction func btnGoster(_ sender: Any) {
        print("Switch State : \(switchState.isOn)")
        let index = segControl.selectedSegmentIndex
        let secilenKategori = segControl.titleForSegment(at: index)!
        print("Segmented Durum : \(secilenKategori)")
        print("Slider Durum : \(Int(slider.value))")
        print("Stepper Durum: \(Int(stepper.value))")
    }
    
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = "\(Int(sender.value))"
    }
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelStepper.text = "\(Int(stepper.value))"
    }
    
    
    @IBAction func btnBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    
    @IBAction func btnDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
}

