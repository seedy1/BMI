//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var calcBrain = CalcBrain()
    
//    var bmi: Float = 0.0

    @IBOutlet weak var heigthLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heigthSliderChange(_ sender: UISlider){
        let height = round(sender.value*100)/100.0
        heigthLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider){
        let weight = Int(sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calc(_ sender: UIButton){
//        bmi = heightSliderOutlet.value / pow(heightSliderOutlet.value, 2)
//        let resultViewController = ResultViewController()
//        resultViewController.bmiValue = String(bmi)
//        self.present(resultViewController, animated: true, completion: nil)
        calcBrain.calcBMI(height: heightSliderOutlet.value, wieght: weightSliderOutlet.value)
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult"{
            let destinationViewController = segue.destination as! ResultUiViewController
            destinationViewController.bmiValue = calcBrain.getBMI()
            destinationViewController.advice = calcBrain.getAdvice()
        }
    }
}

