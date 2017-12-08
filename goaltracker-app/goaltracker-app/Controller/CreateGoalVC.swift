//
//  CreateGoalVC.swift
//  goaltracker-app
//
//  Created by adolfo reyes on 12/7/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var bextBtn: UIButton!
    @IBOutlet weak var goalTextVIew: UITextView!
    @IBOutlet weak var lognTermBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }
}
