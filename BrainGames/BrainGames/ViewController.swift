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
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    var colors = ["red", "blue", "green", "yellow"]
    var score = 0
    var timer = Timer()
    
    
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
            
            backgroundImage.isHidden = true
            view.backgroundColor = UIColor.green
            
        } else if meaning != textColor && userAnswer == "NO" {

            backgroundImage.isHidden = true
            view.backgroundColor = UIColor.green

        } else {
            print("false")
            
            backgroundImage.isHidden = true
            view.backgroundColor = UIColor.red
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateColors), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func updateColors(){
        
        color1.text = colors.randomElement()
        color2.text = colors.randomElement()
        
        let correctAnswer = colors.randomElement()
        
        color2.accessibilityIdentifier = correctAnswer
        color2.textColor = UIColor(named: correctAnswer!)
//        print(color2.accessibilityIdentifier!)
        
        backgroundImage.isHidden = false
        
    }
    

}

