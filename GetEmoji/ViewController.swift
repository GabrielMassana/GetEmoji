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
        
        //Examples
        
        range()
        
        count()
        
        contains()
    }
    
    func range() {
        
        let example: NSString = "👨‍👨‍👧‍👧😍"
        
        let ranges: NSArray = example.emo_emojiRanges()
        
        print(ranges)
        
        for value in ranges {
            
            let range:NSRange = (value as! NSValue).rangeValue
            
            print(example.substringWithRange(range))
        }
    }
    
    func count() {
        
        let example: NSString = "string👨‍👨‍👧‍👧with😍emojis✊🏿"
        
        let emojiCount: NSInteger = example.emo_emojiCount()
        
        print(emojiCount)
    }
    
    func contains() {
        
        let example: NSString = "string👨‍👨‍👧‍👧with😍emojis✊🏿"

        let containsEmoji: Bool = example.emo_containsEmoji()
        
        print(containsEmoji)
    }
}
