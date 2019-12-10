//
//  ViewController.swift
//  BrainGames
//
//  Created by Mondale on 12/4/19.
//  Copyright © 2019 Mondale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var color2: UILabel!
    @IBOutlet weak var color1: UILabel!
    

    var colors = ["red", "blue", "green", "yellow"]
    var score = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColors()
    
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        
        let meaning = color1.text
        let textColor = color2.accessibilityIdentifier
        let userAnswer = sender.currentTitle!
        
        // Handles
        
        if meaning == textColor && userAnswer == "YES" {
            print("correct")
            
        } else if meaning != textColor && userAnswer == "NO" {
            print("correct")
            
        } else {
            print("false")
        }
        
        updateColors()
        
    }
    
    func updateColors(){
        color1.text = colors.randomElement()
        color2.text = colors.randomElement()
        
        color2.accessibilityIdentifier = color2.text
        color2.textColor = UIColor(named: color2.text!)
//        print(color2.accessibilityIdentifier!)
        
    }
    

}

