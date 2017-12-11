//
//  FinishGoalVC.swift
//  goaltracker-app
//
//  Created by adolfo reyes on 12/10/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit
import CoreData

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
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        if pointsTextView.text != "" {
            self.save { (complete) in
                if complete {
                    self.presentingViewController!.presentingViewController?.dismissDetail()
                }
            }
        }
    }
    
    func save(completion: (_ finished: Bool) -> ()){
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextView.text!)!
        goal.goalProgress = Int32(0)
        do{
            try managedContext.save()
            completion(true)
            print("it worked!!!!")
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
}
