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
    
    enum Color {
        case red
        case blue
        case green
        case yellow
        
        var colorName: String{
            switch self {
            case .red:
                return "red"
            case .blue:
                return "blue"
            case .green:
                return "green"
            case .yellow:
                return "yellow"
            }
        }
        
        var colorIdentifier: UIColor {
            switch self {
            case .red:
                return .red
            case .blue:
                return .blue
            case .green:
                return .green
            case .yellow:
                return .yellow
            }
        }
    }
    
    var colors = [Color.red, Color.blue, Color.green, Color.yellow ]
    
    
    
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
        color1.text = colors.randomElement()?.colorName
        color2.text = colors.randomElement()?.colorName
        color2.textColor = colors.randomElement()?.colorIdentifier

    }
}

