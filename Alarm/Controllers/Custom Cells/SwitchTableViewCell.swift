//
//  SwitchTableViewCell.swift
//  Alarm
//
//  Created by Josh Sparks on 9/23/19.
//  Copyright © 2019 Josh Sparks. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    var alarm: Alarm? {
    didSet {
        updateViews()
        }
    }
    
    
    func updateViews() {
        guard let alarm = alarm else { return }
        alarmSwitch.isOn = alarm.enable
        timeLabel.text = alarm.fireTimeAsString
        nameLabel.text = alarm.name
    }

    // MARK: Outlets
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var alarmSwitch: UISwitch!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
// MARK: Actions
    
    @IBAction func sswitchValueChanged(_ sender: Any) {
       }
       
}
