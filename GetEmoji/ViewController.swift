//
//  ViewController.swift
//  GetEmoji
//
//  Created by GabrielMassana on 25/01/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        //Range
        
        let example: NSString = "👨‍👨‍👧‍👧😍"
        
        let ranges: NSArray = example.emo_emojiRanges()
    
        print(ranges)

        for value in ranges {
            
            let range:NSRange = (value as! NSValue).rangeValue
            
            print(example.substringWithRange(range))
        }
        
        // Count
        
        let secondExample: NSString = "string👨‍👨‍👧‍👧with😍emojis✊🏿"

        let emojiCount: NSInteger = secondExample.emo_emojiCount()
        
        print(emojiCount)
        
        //Contains
        
        let containsEmoji: Bool = secondExample.emo_containsEmoji()
        
        print(containsEmoji)
    }
}

