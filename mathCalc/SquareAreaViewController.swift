//
//  squareViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/25/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class SquareAreaViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var squareAreaSideTextField: UITextField!
    @IBOutlet weak var squareAreaAnswer: UILabel!
    
  
    @IBAction func squareAreaSolveBtn(_ sender: Any) {
    
        let squareAreaSide: Double = Double(squareAreaSideTextField.text!) ?? 0
        let area = squareAreaSide * squareAreaSide
        squareAreaAnswer.text = "Answer: " + String(area) + " units²"

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
