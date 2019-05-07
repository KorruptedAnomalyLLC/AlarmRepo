//
//  AlarmDetailTableViewController.swift
//  Alarm
//
//  Created by Austin West on 5/6/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit

class AlarmDetailTableViewController: UITableViewController {

  
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var alarmEnabledButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    @IBAction func alarmEnabledButton(_ sender: Any) {
        
    }
}
