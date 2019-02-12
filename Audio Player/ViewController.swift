//
//  ViewController.swift
//  Audio Player
//
//  Created by Wilmer sinchi on 1/11/19.
//  Copyright © 2019 Wilmer sinchi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()

    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    @IBAction func slider(_ sender: Any) {
        player.volume = slider.value
    }
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "sheep", ofType: "mp3")
        
        
        do {
            //setting up the audio player
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            player.play()
        } catch {
            
        }
    }


}

