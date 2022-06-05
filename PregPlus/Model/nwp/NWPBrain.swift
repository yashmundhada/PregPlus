//
//  NWPBrain.swift
//  PregPlus
//
//  Created by Yash Mundhada on 03/06/22.
//

import Foundation


struct NWPBrain{
    
    var dateValue: Date?
    var dateComponent = DateComponents()
    let current = Date()
    mutating func calculateWeek(nwpDate: Date){
        dateValue = nwpDate
        
        
        //let diffInDays = Calendar.current.dateComponents([.day], from: nwpDate, to: current).day
        
    }
    
    func getWeek() -> Int?{
        var numberOfDays = Calendar.current.dateComponents([.day], from: dateValue!, to: current).day
        
        return numberOfDays
        
    }
}
