//
//  ParallelogramAreaViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/27/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class ParallelogramAreaViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var parallelogramAreaBaseTextField: UITextField!
    @IBOutlet weak var parallelogramAreaHeightTextField: UITextField!
    
    @IBOutlet weak var parallelogramAreaAnswer: UILabel!

    @IBAction func ParallelogramAreaSolveBtn(_ sender: Any) {
        let parallelogramAreaBase: Double = Double(parallelogramAreaBaseTextField.text!) ?? 0
        let parallelogramAreaHeight: Double = Double(parallelogramAreaHeightTextField.text!) ?? 0
        let area = parallelogramAreaBase * parallelogramAreaHeight
        parallelogramAreaAnswer.text = "Answer: " + String(area) + " units²"
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

