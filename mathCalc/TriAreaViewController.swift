//
//  TriAreaViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/26/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class TriAreaViewController: UIViewController {

    @IBOutlet weak var triAreaBaseTextField: UITextField!
    @IBOutlet weak var triAreaHeightTextField: UITextField!
    @IBOutlet weak var triAreaAnswer: UILabel!
    
    @IBAction func triAreaSolveBtn(_ sender: Any) {
        let triAreaBase: Double = Double(triAreaBaseTextField.text!) ?? 0
        let triAreaHeight: Double = Double(triAreaHeightTextField.text!) ?? 0
        let area = 0.5 * triAreaBase * triAreaHeight
        triAreaAnswer.text = "Answer: " + String(area) + " units²"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   /* func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }*/
    
    
}
