//
//  CalcBrain.swift
//  BMI Calculator
//
//  Created by Seedy Jobe on 23/07/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalcBrain{

    var bmi: BMI?
    
    mutating func calcBMI(height: Float, wieght: Float){
        let bmiValue = height / pow(height, 2)
        if bmiValue < 0.5 {
            bmi = BMI(value: bmiValue, advice: "Eat veges")
        }else if bmiValue < 2.4 {
            bmi = BMI(value: bmiValue, advice: "normal")
        }else{
            bmi = BMI(value: bmiValue, advice: "no junk food no")
        }
    }
    
    func getBMI() -> String {
//        if bmi != nil{
        let bmiString = String(round((bmi?.value ?? 0.0)*10)/10.0)
        return bmiString
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Errrr..."
    }
    
}
