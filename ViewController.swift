//
//  ViewController.swift
//  War App
//
//  Created by Ioana Gadinceanu on 6/26/18.
//  Copyright © 2018 Apress. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    

    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func dealTapped(_ sender: Any) {
        
    
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
       
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
     
        
        if leftRandomNumber > rightRandomNumber {
            leftScore = leftScore + 1
            
            leftScoreLabel.text = String(leftScore)
        }
            
        
        else if rightRandomNumber > leftRandomNumber {
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            
            
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
    }
    
    
}

