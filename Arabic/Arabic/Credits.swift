//
//  Credits.swift
//  Arabic
//
//  Created by Zhang Bozheng on 24/6/16.
//  Copyright © 2016 Zhang Bozheng. All rights reserved.
//

import UIKit
import AVFoundation

class Credits: UIViewController {

    @IBOutlet weak var creditsL: UILabel!
    
    let readWriteObj = ReadWrite();
    
    @IBAction func minus1(sender: AnyObject) {
        minusCredits(1);
    }
    @IBAction func minus10(sender: AnyObject) {
        minusCredits(10);
    }
    @IBAction func minus100(sender: AnyObject) {
        minusCredits(100);
    }
    @IBAction func minus1000(sender: AnyObject) {
        minusCredits(1000);
    }
    
    func minusCredits(amount: Int){
        
        playSound("button_click")
        
        if(Settings.credits >= amount){
            Settings.credits -= amount
        }
        else{
            Settings.credits = 0;
        }
        readWriteObj.write()
        creditsL.text = "x" + String(Settings.credits)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        creditsL.text = "x" + String(Settings.credits)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backClicked(sender: AnyObject) {
        playSound("button_click")
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func playSound(sound: String){
        
        if let soundURL = NSBundle.mainBundle().URLForResource(sound, withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
