//
//  SphereVolumeViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/27/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class SphereVolumeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var sphereVolumeRadiusTextField: UITextField!
    
    @IBOutlet weak var sphereVolumeAnswer: UILabel!
    
    @IBAction func SphereVolumeSolveBtn(_ sender: Any) {
        let sphereVolumeRadius: Double = Double(sphereVolumeRadiusTextField.text!) ?? 0
        let volume = (4 * 3.14 * (sphereVolumeRadius * sphereVolumeRadius * sphereVolumeRadius))/3
        sphereVolumeAnswer.text = "Answer: " + String(volume) + " units³"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappedAround() 
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }

}
