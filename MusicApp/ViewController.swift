//
//  ViewController.swift
//  MusicApp
//
//  Created by LaboratoriOS Cronian Academy on 08/04/2017.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: AnyObject) {
        player.play()
    }
    
    @IBAction func pause(_ sender: AnyObject){
        player.pause()
    }
    
    
    @IBAction func replay(_ sender: AnyObject){
        player.currentTime = 0
    }
    
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do{
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath:audioPath!) as URL)
        }
        catch{
            //ERROR
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

