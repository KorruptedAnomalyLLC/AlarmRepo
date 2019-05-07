//
//  Alarm.swift
//  Alarm
//
//  Created by Austin West on 5/6/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class Alarm: Equatable{
    
    
    var fireDate: Date
    var name: String
    var enabled: Bool
    var uuid: String
    
    init(fireDate: Date, name: String, enabled: Bool = true, uuid: String = UUID().uuidString) {
        self.fireDate = fireDate
        self.name = name
        self.enabled = enabled
        self.uuid = uuid
    }
    
    var fireTimeAsString: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: fireDate)
    }
    
}


func ==(lhs: Alarm, rhs: Alarm) -> Bool {
    return lhs.uuid == rhs.uuid
}
