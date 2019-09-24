//
//  AlarmDetailTableViewController.swift
//  Alarm
//
//  Created by Josh Sparks on 9/23/19.
//  Copyright © 2019 Josh Sparks. All rights reserved.
//

import UIKit

class AlarmDetailTableViewController: UITableViewController {

    
    // Outlets
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var alarmName: UITextField!
    @IBOutlet weak var enableButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    // MARK: Actions
    
    @IBAction func enableButtonTapped(_ sender: Any) {
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
}
