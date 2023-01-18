//
//  ViewController.swift
//  WarCardGame
//
//  Created by Sanskriti Sinha on 06/01/23.
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
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        
        //Randomize some numbers
        let leftNumber = Int.random(in: 2...14)

        let righNumber = Int.random(in: 2...14)

        
        //Update Image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(righNumber)")

        
        //compare the random numbers
        if leftNumber > righNumber {
    
            //left wins
            
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }
        
        else if leftNumber < righNumber {
            //right wins
            
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        }
        
        else {
            //Tie
            
        }
        
    }

}

