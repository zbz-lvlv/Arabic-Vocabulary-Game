//
//  Adjectives.swift
//  Arabic
//
//  Created by Zhang Bozheng on 23/6/16.
//  Copyright © 2016 Zhang Bozheng. All rights reserved.
//

import UIKit
import AVFoundation

class Adjectives: UIViewController {

    @IBOutlet weak var wordL: UILabel!
    
    @IBOutlet weak var option1B: UIButton!
    @IBOutlet weak var option2B: UIButton!
    @IBOutlet weak var option3B: UIButton!
    @IBOutlet weak var option4B: UIButton!
    var optionBs = [UIButton]();
    
    @IBOutlet weak var creditsL: UILabel!
    
    let words = Words();
    let readWriteObj = ReadWrite();
    
    var wordIndex = 0;
    
    var correctOptionIndex = 0;
    
    override func viewDidLoad() {
        
        //init buttons
        optionBs = [option1B, option2B, option3B, option4B];
        
        //init credits
        creditsL.text = "x" + String(Settings.credits);
        
        //init words
        words.initAdjsArabic();
        words.initAdjsEnglish();
        
        newQuestion()
        
    }
    
    func newQuestion(){
        
        for(var c = 0; c < 4; c += 1) {
            optionBs[c].setTitleColor(UIColor.init(red: 38/255, green: 166/255, blue: 91/255, alpha: 1), forState: UIControlState.Normal);
            optionBs[c].setTitleColor(UIColor.init(red: 38/255, green: 166/255, blue: 91/255, alpha: 0.5), forState: UIControlState.Disabled)
            optionBs[c].exclusiveTouch = true;
        }
        
        setWord();
        setOptions();
        
    }
    
    func setWord(){
        
        wordIndex = Int(arc4random_uniform(UInt32(Settings.noOfAdjs)));
        wordL.text = words.adjsArabic[wordIndex];
        
    }
    
    func setOptions(){
        
        //other options
        var indices = [Int]();
        
        for(var c = 0; c < Settings.noOfAdjs; c += 1){
            indices.append(c);
        }
        indices.removeAtIndex(wordIndex);
        
        for(var c = 0; c < 4; c += 1) {
            
            // random key from array
            let arrayKey = Int(arc4random_uniform(UInt32(indices.count)))
            
            // your random number
            let index = indices[arrayKey]
            
            optionBs[c].setTitle(words.adjsEnglish[index], forState: UIControlState.Normal);
            
            // make sure the number isnt repeated
            indices.removeAtIndex(arrayKey)
        }
        
        correctOptionIndex = Int(arc4random_uniform(4));
        optionBs[correctOptionIndex].setTitle(words.adjsEnglish[wordIndex], forState: UIControlState.Normal);
        
    }
    
    @IBAction func option1Clicked(sender: AnyObject) {
        
        if(correctOptionIndex == 0){
            correct()
        }
        else{
            optionBs[0].setTitleColor(UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 1), forState: UIControlState.Normal)//231 76 60
            optionBs[0].setTitleColor(UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 0.5), forState: UIControlState.Disabled)//255 152 120
            wrong()
        }
        
    }
    
    @IBAction func option2Clicked(sender: AnyObject) {
        
        if(correctOptionIndex == 1){
            correct()
        }
        else{
            optionBs[1].setTitleColor(UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 1), forState: UIControlState.Normal)//231 76 60
            optionBs[1].setTitleColor(UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 0.5), forState: UIControlState.Disabled)//255 152 120
            wrong()
        }
        
    }
    
    @IBAction func option3Clicked(sender: AnyObject) {
        
        if(correctOptionIndex == 2){
            correct()
        }
        else{
            optionBs[2].setTitleColor(UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 1), forState: UIControlState.Normal)//231 76 60
            optionBs[2].setTitleColor(UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 0.5), forState: UIControlState.Disabled)//255 152 120
            wrong()
        }
        
    }
    
    @IBAction func option4Clicked(sender: AnyObject) {
        
        if(correctOptionIndex == 3){
            correct()
        }
        else{
            optionBs[3].setTitleColor(UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 1), forState: UIControlState.Normal)//231 76 60
            optionBs[3].setTitleColor(UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 0.5), forState: UIControlState.Disabled)//255 152 120
            wrong()
        }
        
    }
    func correct(){
        
        playSound("correct_selection")
        Settings.credits += 1;
        readWriteObj.write()
        creditsL.text = "x" + String(Settings.credits)
        newQuestion()
    }
    
    func wrong(){
        
        playSound("wrong")
        disableOptions()
        Settings.credits -= 0;
        readWriteObj.write()
        creditsL.text = "x" + String(Settings.credits)
    }
    
    func disableOptions(){
        for(var c = 0; c < 4; c += 1) {
            optionBs[c].enabled = false;
        }
        var delay = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(reenableOptions), userInfo: nil, repeats: false)
    }
    
    func reenableOptions(){
        for(var c = 0; c < 4; c += 1) {
            optionBs[c].enabled = true;
        }
    }
    
    func playSound(sound: String){
        
        if let soundURL = NSBundle.mainBundle().URLForResource(sound, withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
        
    }
    
    @IBAction func backClicked(sender: AnyObject) {
        
        playSound("button_click")
        NSNotificationCenter.defaultCenter().postNotificationName("updateCredits", object: nil)
        self.dismissViewControllerAnimated(true, completion: nil);
    }
}
