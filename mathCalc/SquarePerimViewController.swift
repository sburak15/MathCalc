//
//  SquarePerimViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/26/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class SquarePerimViewController : UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var squarePerimSideTextField: UITextField!
    @IBOutlet weak var squarePerimAnswer: UILabel!
    
    
    @IBAction func squarePerimSolveBtn(_ sender: Any) {
        let squarePerimSide: Double = Double(squarePerimSideTextField.text!) ?? 0
        let perimeter = squarePerimSide * 4
        squarePerimAnswer.text = "Answer: " + String(perimeter) + " units"
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
