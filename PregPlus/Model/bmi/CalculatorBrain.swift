//
//  CalculateBMI.swift
//  PregPlus
//
//  Created by Yash Mundhada on 02/06/22.
//

import UIKit


struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float,weight: Float){
        
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, color: UIColor.blue)
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, color: UIColor.green )
        }
        else{
            bmi = BMI(value: bmiValue, color: UIColor.red )
        }
        
    }
    
    
    func getBMIValue() -> String{
        let bmiToDecimal = String(format: "%.2f", bmi?.value ?? 0.0)
        return bmiToDecimal
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
