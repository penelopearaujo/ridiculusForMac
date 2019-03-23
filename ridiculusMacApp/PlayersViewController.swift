//
//  PlayersViewController.swift
//  ridiculusMacApp
//
//  Created by Penélope Araújo on 28/02/19.
//  Copyright © 2019 René Melo de Lucena. All rights reserved.
//

import Cocoa

class PlayersViewController: NSViewController {
    
    var players = 0
    var teamNumber = 0
    @IBOutlet weak var playersLabel: NSTextField!
    @IBOutlet weak var numberPlayersField: NSTextField!
    
    @IBAction func nextButton(_ sender: Any) {
        if numberPlayersField.stringValue != "" {
            players = Int(numberPlayersField.stringValue)!
            if players < 3 {
                playersLabel.stringValue = "Gather more friends to play!"
                
                //                if let nextViewController = self.storyboard?.instantiateController(withIdentifier: "playersViewController") as? PlayersViewController {
                //                    self.view.window?.contentViewController = nextViewController
                //                }
                
                
            } else if ((players > 3) && (players <= 7)) {
                // dois times
                teamNumber = 2
                Data.shared.numberOfTeams = teamNumber
                
                // playersLabel.stringValue = String(teamNumber)4
                
                while teamNumber > 0 {
                    Data.shared.teams.append(Team(score: 0, id: teamNumber))
                    teamNumber -= 1
                }
                
                // VAI PRA PROXIMA TELA
                // MAS O CODIGO AQUI SÓ ABRE A MESMA TELA (CARREGA UMA TELA IGUAL)
                //                if let nextViewController = self.storyboard?.instantiateController(withIdentifier: "splitViewController") as? SplitViewController {
                //                    self.view.window?.contentViewController = nextViewController
                //                }
                
                
            } else {
                // mais que 2 times
                teamNumber = players/3
                if players%3 >= 2 {
                    teamNumber+=1
                }
                Data.shared.numberOfTeams = teamNumber
                
                while teamNumber > 0 {
                    Data.shared.teams.append(Team(score: 0, id: teamNumber))
                    teamNumber -= 1
                }
                //                // VAI PRA PROXIMA TELA
                //                if let nextViewController = self.storyboard?.instantiateController(withIdentifier: "splitViewController") as? SplitViewController {
                //                    self.view.window?.contentViewController = nextViewController
                //                }
            }
            // VAI PRA PROXIMA TELA
            if let nextViewController = self.storyboard?.instantiateController(withIdentifier: "splitViewController") as? SplitViewController {
                self.view.window?.contentViewController = nextViewController
            }
        }
    }
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //        self.view.layer?.backgroundColor = #colorLiteral(red: 0.1411764706, green: 0.07058823529, blue: 0.2823529412, alpha: 1)
    //
    //    }
    
    override func viewWillAppear() {
        self.view.layer?.backgroundColor = #colorLiteral(red: 0.1411764706, green: 0.07058823529, blue: 0.2823529412, alpha: 1)
        
    }
    
}
