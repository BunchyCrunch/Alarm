//
//  Alarm.swift
//  Alarm
//
//  Created by Josh Sparks on 9/23/19.
//  Copyright © 2019 Josh Sparks. All rights reserved.
//

import Foundation

class Alarm {
    var fireDate: Date
    var name: String
    var enable: Bool
    let uuid: String?
    
    var fireTimeAsString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy"
        let date = dateFormatter.string(from: fireDate)
      
        return date
    }
    
    init(fireDate: Date, name: String, enable: Bool, uuid: String?) {
        self.fireDate = fireDate
        self.name = name
        self.enable = enable
        self.uuid = uuid
    }
}

extension Alarm: Equatable {
    static func == (lhs: Alarm, rhs: Alarm) -> Bool {
        return lhs.fireDate == rhs.fireDate && lhs.name == rhs.name && lhs.enable == rhs.enable && lhs.uuid == rhs.uuid
    }
    
}
