//
//  CreateGoalVC.swift
//  goaltracker-app
//
//  Created by adolfo reyes on 12/7/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var shortTermBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var goalTextVIew: UITextView!

    @IBOutlet weak var longTermBtn: UIButton!
    
    var goalType: GoalType = .longTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeybroad()
        longTermBtn.setSelectedColor()
        shortTermBtn.setDeselectedColor()
        goalTextVIew.delegate = self
        
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.setDeselectedColor()
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if goalTextVIew.text != "" && goalTextVIew.text != "what is your goal?"{
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextVIew.text, type: goalType)
            presentDetail(finishGoalVC)
        }
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextVIew.text = ""
        goalTextVIew.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    
}
