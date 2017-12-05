//
//  GoalsVC.swift
//  goaltracker-app
//
//  Created by adolfo reyes on 12/4/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("button was pressed" )
    }
    

}

