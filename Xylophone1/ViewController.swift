//
//  ViewController.swift
//  Xylophone1
//
//  Created by Juuso Loikkanen on 17.11.2022.
//  Copyright © 2022 Simo Loikkanen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    
        
        }
    func playSound(soundName: String) {
         let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
        
            player.play()
            
        }
    }
    
        


    
    


