//
//  TriPerimViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/26/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class TriPerimViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var triPerimFirstSideTextField: UITextField!
    @IBOutlet weak var triPerimSecondSideTextField: UITextField!
    @IBOutlet weak var triPerimThirdSideTextField: UITextField!
    
    @IBOutlet weak var triPerimAnswer: UILabel!
    
    @IBAction func triPerimSolveBtn(_ sender: Any) {
        let triPerimFirstSide: Double = Double(triPerimFirstSideTextField.text!) ?? 0
        let triPerimSecondSide: Double = Double(triPerimSecondSideTextField.text!) ?? 0
        let triPerimThirdSide: Double = Double(triPerimThirdSideTextField.text!) ?? 0
        let perimeter = triPerimFirstSide + triPerimSecondSide + triPerimThirdSide
        triPerimAnswer.text = "Answer: " + String(perimeter) + " units"
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
