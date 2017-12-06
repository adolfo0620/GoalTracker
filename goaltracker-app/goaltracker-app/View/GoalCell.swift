//
//  GoalCell.swift
//  goaltracker-app
//
//  Created by adolfo reyes on 12/5/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalDescLbl: UILabel!
    
    
    @IBOutlet weak var goalProgressLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    
    
    func configureCell(description: String, type: String, goalProgressAmount: Int){
        self.goalDescLbl.text = description
        self.goalTypeLbl.text = type
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }
}
