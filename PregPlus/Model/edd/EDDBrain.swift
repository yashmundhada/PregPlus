//
//  EDDBrain.swift
//  PregPlus
//
//  Created by Yash Mundhada on 03/06/22.
//

import Foundation

struct EDDBrain{
    
    var dateValue: Date?
    var dateComponent = DateComponents()
    
    mutating func calculateDate(eddDate: Date){
        //let dateFormatter = DateFormatter()
        dateValue = eddDate
        
        let monthsToAdd = 9
        let daysToAdd = 7
        dateComponent.month = monthsToAdd
        dateComponent.day = daysToAdd
        
        
        
        
    }
    
    func getFutureDate() -> Date?{
        let futureDate = Calendar.current.date(byAdding: dateComponent, to: dateValue!)
        return futureDate
    }
}
