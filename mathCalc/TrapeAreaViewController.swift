//
//  TrapeAreaViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/27/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class TrapeAreaViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var trapeAreaBase1TextField: UITextField!
    @IBOutlet weak var trapeAreaBase2TextField: UITextField!
    @IBOutlet weak var trapeAreaHeightTextField: UITextField!
    
    @IBOutlet weak var trapeAreaAnswer: UILabel!
    
    @IBAction func TrapeAreaSolveBtn(_ sender: Any) {
        let trapeAreaBase1: Double = Double(trapeAreaBase1TextField.text!) ?? 0
        let trapeAreaBase2: Double = Double(trapeAreaBase2TextField.text!) ?? 0
        let trapeAreaHeight: Double = Double(trapeAreaHeightTextField.text!) ?? 0
        let area = 0.5 * trapeAreaHeight * (trapeAreaBase1 + trapeAreaBase2)
        trapeAreaAnswer.text = "Answer: " + String(area) + " units²"
        
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
