//
//  InterfaceController.swift
//  WatchKitDemo WatchKit Extension
//
//  Created by Cyrilshanway on 2015/9/5.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var guessSlider: WKInterfaceSlider! // the slider
    @IBOutlet weak var guessLabel: WKInterfaceLabel!   // the label displaying the guess number
    @IBOutlet weak var resultLabel: WKInterfaceLabel!  // Wrong/Correct Label
    
    var guessNumber = 3
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        
        
    }

    @IBAction func updateGuess(value: Float) {
        
        guessNumber = Int(value * 5)
        
        guessLabel.setText("Your guess: \(guessNumber)")
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func startGuess() {
        var randomNumber = Int(arc4random_uniform(6))
        
        if guessNumber == randomNumber {
            resultLabel.setText("Correct. You Win!")
        }else {
            resultLabel.setText("Wrong. The number is \(randomNumber)")
        }
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
