//
//  HomeViewController.swift
//  ridiculusMacApp
//
//  Created by Penélope Araújo on 26/02/19.
//  Copyright © 2019 René Melo de Lucena. All rights reserved.
//

import Cocoa
import AVFoundation

//play game song
func initialSong() {
    let filePath = Bundle.main.path(forResource: "ridiculusmusic", ofType: "wav")
    let audioURL = URL(fileURLWithPath: filePath!)
    do{
        Data.shared.player = try AVAudioPlayer(contentsOf: audioURL as URL)
        Data.shared.player?.prepareToPlay()
        Data.shared.player?.numberOfLoops = -1
        Data.shared.player?.play()
    } catch{
        print("Error: \(error)")
    }
}

class HomeViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSong()
        
        self.view.layer?.backgroundColor = #colorLiteral(red: 0.1411764706, green: 0.07058823529, blue: 0.2823529412, alpha: 1)

    }
    
    @IBAction func playButton(_ sender: Any) {
        if let nextViewController = self.storyboard?.instantiateController(withIdentifier: "playersViewController") as? PlayersViewController {
            self.view.window?.contentViewController = nextViewController
        }
    }
    

    
}
