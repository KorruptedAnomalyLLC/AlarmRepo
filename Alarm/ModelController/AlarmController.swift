//
//  AlarmController.swift
//  Alarm
//
//  Created by Austin West on 5/6/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class AlarmController {
    
    static let shared = AlarmController()
    
    init() {
        self.alarms = mockAlarms
    }
    
    var alarms = [Alarm]()
    
    
    func addAlarm(fireDate: Date, name: String, enabled: Bool) {
        let alarm = Alarm(fireDate: fireDate, name: name, enabled: enabled)
        alarms.append(alarm)
    }
    
    func update(alarm: Alarm, fireDate: Date, name: String, enabled: Bool) {
        alarm.name = name
        alarm.fireDate = fireDate
        alarm.enabled = enabled
    }
    
    func delete(alarm: Alarm) {
        guard let index = AlarmController.shared.alarms.index(of: alarm) else {return}
        alarms.remove(at: index)
        
        
    }
    
    let mockAlarms: [Alarm] = {
        let alarm1 = Alarm(fireDate: Date(timeIntervalSinceNow: 60 * 60 * 3), name: "Alarm 1")
        let alarm2 = Alarm(fireDate: Date(timeIntervalSinceNow: 60 * 60 + 4), name: "Just a test")
        let alarm3 = Alarm(fireDate: Date(timeIntervalSinceNow: 60 * 60 * 6 + 32), name: "Woot Woot")
        return [alarm1, alarm2, alarm3]
    }()
    
}
