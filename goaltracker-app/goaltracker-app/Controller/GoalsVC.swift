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
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("button was pressed" )
    }

}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {return UITableViewCell() }
        cell.configureCell(description: "programes everydat", type: .longTerm, goalProgressAmount: 365)
        return cell
    }
}

