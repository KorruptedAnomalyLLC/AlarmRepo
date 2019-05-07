//
//  SwitchTableViewCell.swift
//  Alarm
//
//  Created by Austin West on 5/6/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    // SImilar to a landing pad
    var alarm: Alarm? {
        didSet {
            updateViews()
        }
        
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var alarmSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func updateViews() {
        guard let alarm = alarm else {return}
        
        nameLabel.text = alarm.name
        timeLabel.text = alarm.fireTimeAsString
        alarmSwitch.isOn = alarm.enabled
        
    }
    
    @IBAction func switchValueChanged(_ sender: Any) {
    }
    
}
