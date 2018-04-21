//
//  ReadWrite.swift
//  Arabic
//
//  Created by Zhang Bozheng on 24/6/16.
//  Copyright © 2016 Zhang Bozheng. All rights reserved.
//

import Foundation

class ReadWrite{

    func read(){
        
        let file = "zbz_lvlvarabic.txt" //this is the file. we will write to and read from it
        
        if let dir : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
            let path = dir.stringByAppendingPathComponent(file);
            
            if(NSFileManager.defaultManager().fileExistsAtPath(path)){
                //reading
                do {
                    
                    let text = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
                    let splitText = text.componentsSeparatedByString(" ");
                    
                    Settings.credits = Int(splitText[0])!;
                    
                }
                catch {/* error handling here */}
            }
            
            //if file doesn't exist (ie first run)
            else{
                
                //writing
                
                var text = "";
                
                do {
                    
                    text += String(Settings.credits)
                    try text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
                    
                }
                catch {/* error handling here */}
                
            }
            
        }
        
    }

    func write(){
        
        let file = "zbz_lvlvarabic.txt" //this is the file. we will write to and read from it
        
        if let dir : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
            let path = dir.stringByAppendingPathComponent(file);
            
            //writing
            
            var text = "";
            
            do {
                
                text += String(Settings.credits)
                try text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
                
            }
            catch {/* error handling here */}
            
        }
        
    }

}


