//
//  ViewController.swift
//  CommonInputControlsSection4
//
//  Created by Mathew Soto on 4/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    var reallys = ""

    @IBOutlet var iLoveSwiftLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func updateLabel(_ sender: Any) {
        reallys += "really "
        iLoveSwiftLabel.text = "I \(reallys)love Swift"
    }
    
    @IBAction func changeBackgroundColor(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    
    @IBAction func valueChanged(_ sender: UISlider) {
        view.alpha = CGFloat(sender.value)
    }
    
    @IBAction func userPressedReturn(_ sender: UITextField) {
        if let text = sender.text {
            print("Return: " + text)
        }
    }
    
    @IBAction func userEdited(_ sender: UITextField) {
        if let text = sender.text {
            print("Edit: " + text)
        }
    }
}

