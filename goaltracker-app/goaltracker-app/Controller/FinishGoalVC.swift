//
//  FinishGoalVC.swift
//  goaltracker-app
//
//  Created by adolfo reyes on 12/10/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    var goalDescription: String!
    var goalType: GoalType!
    @IBOutlet weak var pointsTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeybroad()
        pointsTextView.delegate = self
    }
    
    func initData(descrition: String, type: GoalType){
        self.goalDescription = description
        self.goalType = type
    }
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        
    }
}
