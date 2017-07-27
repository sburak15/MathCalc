//
//  RectPerimViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/26/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class RectPerimViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var rectPerimWidthTextField: UITextField!
    @IBOutlet weak var rectPerimLengthTextField: UITextField!
    
    @IBOutlet weak var rectPerimAnswer: UILabel!
    
    @IBAction func rectPerimSolveBtn(_ sender: Any) {
        let rectPerimLength: Double = Double(rectPerimLengthTextField.text!) ?? 0
        let rectPerimWidth: Double = Double(rectPerimWidthTextField.text!) ?? 0
        let perimeter = (2 * rectPerimLength) + (2 * rectPerimWidth)
        rectPerimAnswer.text = "Answer: " + String(perimeter) + " units"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
