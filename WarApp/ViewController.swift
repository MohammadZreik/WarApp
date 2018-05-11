//
//  ViewController.swift
//  WarApp
//
//  Created by Mohammad Zreik on 2018-05-11.
//  Copyright © 2018 Mohammad Zreik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LeftImg: UIImageView!
    @IBOutlet weak var RightImg: UIImageView!
    @IBOutlet weak var PlayerLabel: UILabel!
    @IBOutlet weak var CpuLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DealTapped(_ sender: Any) {
        
        let LeftCard = arc4random_uniform(13) + 2
        let RightCard = arc4random_uniform(13) + 2
        
        
        LeftImg.image = UIImage(named: "card\(LeftCard)")
        RightImg.image = UIImage(named: "card\(RightCard)")
        
        
    }
    
}

