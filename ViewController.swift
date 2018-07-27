//
//  ViewController.swift
//  War App
//
//  Created by Ioana Gadinceanu on 6/26/18.
//  Copyright © 2018 Apress. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //aceste clase le putem testa in interiorul oricaror functii -> le vom testa in viewDid Load
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    
    
    // we need a property to keep track of the scores
    var leftScore = 0
    var rightScore = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize two numbers
    
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
       
        //Change the image views
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
     
        
        //Compare two numbers
        
        if leftRandomNumber > rightRandomNumber {
            //Update the score
            leftScore = leftScore + 1
            
            //Update the label
            leftScoreLabel.text = String(leftScore)
        }
            
        
        else if rightRandomNumber > leftRandomNumber {
            //Update the score
            rightScore += 1
            
            //Update the label
            rightScoreLabel.text = String(rightScore)
            
            
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
    }
    
    
}

