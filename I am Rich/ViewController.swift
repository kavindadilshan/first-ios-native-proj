//
//  ViewController.swift
//  I am Rich
//
//  Created by Ceyentra Technologies on 2022-05-31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix")
//        diceImageViewOne.alpha = 0.5
        
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceThree")
    }
    
    /**
      you can use get image literal with #imageLiteral()
      get random numbers for use Int.random(in: 1...4)
      array's random elements get fot randomElement()
     */

    @IBAction func onButtonPress(_ sender: UIButton) {
        var leftDiceNumber = 1
        print("left dice number \(leftDiceNumber)")
//        diceImageViewOne.image = #imageLiteral(resourceName: "DiceTwo")
//        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo")
        diceImageViewOne.image = [#imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceFour")][Int.random(in: 0...3)]
        diceImageViewOne.image = [#imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceFour")].randomElement()
        leftDiceNumber = leftDiceNumber + 1
    }
}

