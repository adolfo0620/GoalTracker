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
    
    @IBOutlet weak var completionView: UIView!
    func configureCell(goal: Goal){
        self.goalDescLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completionView.isHidden = false
        }else{
            self.completionView.isHidden = true
        }
    }
}
