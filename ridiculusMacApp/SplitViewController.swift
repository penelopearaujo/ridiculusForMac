//
//  SplitViewController.swift
//  ridiculusMacApp
//
//  Created by Penélope Araújo on 07/03/19.
//  Copyright © 2019 René Melo de Lucena. All rights reserved.
//

import Cocoa

class SplitViewController: NSViewController {

    @IBOutlet weak var splitLabel: NSTextField!
    var teamNumber:Int = 0
    override func viewDidLoad() {
        teamNumber = Data.shared.teams.count
        splitLabel.stringValue = "divide the players into \(teamNumber) groups, improvise one scene using random words from the screen and the team that makes the other laugh more wins!"
    }

    
}
