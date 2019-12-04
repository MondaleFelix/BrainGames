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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColors()
    
        // Do any additional setup after loading the view.
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
        
        updateColors()
    }
    
    func updateColors(){
        color1.text = colors.randomElement()
        color2.text = colors.randomElement()

    }
}

