//
//  RightRectPrismVolumeViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/27/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class RightRectPrismVolumeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var rightRectPrismVolumeAnswer: UILabel!
    
    @IBOutlet weak var rightRectPrismVolumeLengthTextField: UITextField!
    @IBOutlet weak var rightRectPrismVolumeWidthTextField: UITextField!
    @IBOutlet weak var rightRectPrismVolumeHeightTextField: UITextField!
    
    @IBAction func RightRectPrismVolumeSolveBtn(_ sender: Any) {
        let rightRectPrismVolumeLength: Double = Double(rightRectPrismVolumeLengthTextField.text!) ?? 0
        let rightRectPrismVolumeWidth: Double = Double(rightRectPrismVolumeWidthTextField.text!) ?? 0
        let rightRectPrismVolumeHeight: Double = Double(rightRectPrismVolumeHeightTextField.text!) ?? 0
        let volume = rightRectPrismVolumeLength * rightRectPrismVolumeWidth * rightRectPrismVolumeHeight
        rightRectPrismVolumeAnswer.text = "Answer: " + String(volume) + " units³"
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
