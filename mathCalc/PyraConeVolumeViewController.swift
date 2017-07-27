//
//  PyraConeVolumeViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/27/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class PyraConeVolumeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var pyraConeVolumeHeightTextField: UITextField!
    @IBOutlet weak var pyraConeVolumeBATextField: UITextField!
    
    @IBOutlet weak var PyraConeVolumeAnswer: UILabel!
    
    @IBAction func PyraConeVolumeSolveBtn(_ sender: Any) {
        let pyraConeVolumeHeight: Double = Double(pyraConeVolumeHeightTextField.text!) ?? 0
        let pyraConeVolumeBA: Double = Double(pyraConeVolumeBATextField.text!) ?? 0
        let volume = (pyraConeVolumeBA * pyraConeVolumeHeight)/3
        PyraConeVolumeAnswer.text = "Answer: " + String(volume) + " units³"
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
