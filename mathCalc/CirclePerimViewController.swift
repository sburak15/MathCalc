//
//  CirclePerimViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/26/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class CirclePerimViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var circPerimAnswer: UILabel!
    @IBOutlet weak var circPerimRadiusTextField: UITextField!
    
    @IBAction func circPerimSolveBtn(_ sender: Any) {
        
        let circPerimRadius: Double = Double(circPerimRadiusTextField.text!) ?? 0
        let perimeter = 2 * 3.14 * circPerimRadius
        circPerimAnswer.text = "Answer: " + String(perimeter) + " units"

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
