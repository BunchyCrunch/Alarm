//
//  AlarmController.swift
//  Alarm
//
//  Created by Josh Sparks on 9/23/19.
//  Copyright © 2019 Josh Sparks. All rights reserved.
//

import Foundation

class AlarmController {
    static let shared = AlarmController()
    
    // Source of truth
    var alarms: [Alarm] = []
    
    //CRUD
    
    //Create
    func addAlarm(fireDate: Date, name: String, enable: Bool, uuid: String) {
        let newAlarm = Alarm(fireDate: fireDate, name: name, enable: enable, uuid: nil)
        alarms.append(newAlarm)
    }
    
    //Update
    func updateAlarm(alarm: Alarm, fireDate: Date, name: String, enable: Bool) {
        alarm.name = name
        alarm.fireDate = fireDate
        alarm.enable = enable
        
    }
    //Remove
    func deleteAlarm(alarm: Alarm) {
        guard let entryIndex = alarms.firstIndex(of: alarm) else { return }
    }
}
