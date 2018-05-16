//
//  ViewController.swift
//  WarApp
//
//  Created by Mohammad Zreik on 2018-05-11.
//  Copyright © 2018 Mohammad Zreik. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
  
    
    
    // Images and Labels Outlet
    
    @IBOutlet weak var LeftImg: UIImageView!
    @IBOutlet weak var RightImg: UIImageView!
   
    @IBOutlet weak var PlayerLabel: UILabel!
    @IBOutlet weak var CpuLabel: UILabel!
    
    // Score Value
    
    var PlayerScore = 0
    var CpuScore = 0
    
    // Sound Variable
    var audioPlayer : AVAudioPlayer!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DealTapped(_ sender: Any) {
        playSound()
        UpdateCards()
        
    }
    
    // Method to update cards after shaking the iphone (at the end of the shake)
   override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        playSound()
        UpdateCards()
    }
    
    // Method to update cards and check score
    func UpdateCards(){
        
        // Generate random numbers
        
        let LeftCard = arc4random_uniform(13) + 2
        let RightCard = arc4random_uniform(13) + 2
        
        // Update card images
        
        LeftImg.image = UIImage(named: "card\(LeftCard)")
        RightImg.image = UIImage(named: "card\(RightCard)")
        
        
        // Update score
        
        if LeftCard > RightCard {
            
            PlayerScore += 1
            PlayerLabel.text = String(PlayerScore)
            
        }
            
        else if RightCard > LeftCard {
            
            CpuScore += 1
            CpuLabel.text = String(CpuScore)
            
        }
        
    }
    
    // Method to play sound file from Project folder
    
    func playSound() {
        
        let SoundUrl = Bundle.main.url(forResource: "Deal", withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: SoundUrl!)
        }
        
        catch {
            print(error)
        }
        audioPlayer.play()
    }
    

    
}

