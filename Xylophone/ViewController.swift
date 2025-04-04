//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func KeyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
    }
    
    
    func playSound(soundName : String) {
        guard let path = Bundle.main.url(forResource: soundName, withExtension: "wav") else {
            return }
        let url = URL(fileURLWithPath: path.path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

