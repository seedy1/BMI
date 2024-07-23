//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Seedy Jobe on 22/07/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController{
    
    var bmiValue = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 75)
        view.addSubview(label)
    }
    
}
