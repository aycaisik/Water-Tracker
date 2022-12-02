//
//  DataStore.swift
//  Water-Tracker
//
//  Created by Ayça Işık on 2.12.2022.
//

import Foundation

class DataStore{
    let defaults = UserDefaults.standard
    var currentDay: Int{
        let now = Date()
        let day = Calendar.current.component(.day, from: now)
        return day
    }
    init(){
        let latestUpdateDay = getLatesUpdatedDay()
        if latestUpdateDay != currentDay{
            defaults.set(0, forKey: "currentAmount")
            
        }
        
    }
    
    
    //func
    func getCurrentAmount() -> Double{
        let savedAmount = defaults.double(forKey: "currentAmount")
        return savedAmount
    }
    
    func getLatesUpdatedDay() -> Int{
        let latestDay = defaults.integer(forKey: "latestUpdateDay")
        return latestDay
    }
    func addWater(amount:Double){
        let currentAmount = getCurrentAmount()
        let newAmount = currentAmount + amount
        defaults.set(newAmount,forKey: "currentAmount")
        defaults.set(currentDay,forKey: "latestUpdateDay")
    }
    
}
