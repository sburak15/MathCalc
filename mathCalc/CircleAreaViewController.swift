//
//  CircleViewController.swift
//  mathCalc
//
//  Created by iD Student on 7/25/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class CircleAreaViewController: UIViewController {
    
    @IBOutlet weak var circAreaAnswer: UILabel!
    @IBOutlet weak var circAreaRadiusTextField: UITextField!
    
    
    @IBAction func circAreaSolveBtn(_ sender: Any) {
        
        let circAreaRadius: Double = Double(circAreaRadiusTextField.text!) ?? 0
        let area = (circAreaRadius * circAreaRadius) * 3.14
        circAreaAnswer.text = "Answer: " + String(area) + " units²"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
