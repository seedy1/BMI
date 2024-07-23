//
//  ResultUiViewController.swift
//  BMI Calculator
//
//  Created by Seedy Jobe on 22/07/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultUiViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBAction func recalc(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
