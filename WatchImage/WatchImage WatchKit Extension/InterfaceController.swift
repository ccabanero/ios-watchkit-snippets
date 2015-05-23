//
//  InterfaceController.swift
//  WatchImage WatchKit Extension
//
//  Created by Clint Cabanero on 5/23/15.
//  Copyright (c) 2015 Big Leaf Mobile LLC. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var image: WKInterfaceImage!
    
    @IBAction func handleSwitch(value: Bool) {
        
        if(value == true) {
            
            println("user switched ON")
            
            image.setImageNamed("cat_grumpy")
            
        } else {
            
            println("user switched OFF")
            
            image.setImageNamed("cat_asleep")
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        //default image
        image.setImageNamed("cat_grumpy")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
