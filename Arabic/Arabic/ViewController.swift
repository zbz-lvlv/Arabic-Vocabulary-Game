//
//  ViewController.swift
//  Arabic
//
//  Created by Zhang Bozheng on 21/6/16.
//  Copyright © 2016 Zhang Bozheng. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var creditsL: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let readWriteObj = ReadWrite();
        readWriteObj.read();
        
        creditsL.text = "x" + String(Settings.credits);
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(updateCredits), name: "updateCredits", object: nil)
        
    }
    
    func updateCredits(){
        creditsL.text = "x" + String(Settings.credits);
    }

    @IBAction func buttonsClicked(sender: AnyObject) {
        if let soundURL = NSBundle.mainBundle().URLForResource("button_click", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

