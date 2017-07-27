//
//  RectAreaViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/26/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class RectAreaViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var rectAreaLengthTextField: UITextField!
    @IBOutlet weak var rectAreaWidthTextField: UITextField!
    @IBOutlet weak var rectAreaAnswer: UILabel!
    
    @IBAction func rectAreaSolveBtn(_ sender: Any) {
        let rectAreaLength: Double = Double(rectAreaLengthTextField.text!) ?? 0
        let rectAreaWidth: Double = Double(rectAreaWidthTextField.text!) ?? 0
        let area = rectAreaLength * rectAreaWidth
        rectAreaAnswer.text = "Answer: " + String(area) + " units²"

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
