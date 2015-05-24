//
//  InterfaceController.swift
//  WatchButton WatchKit Extension
//
//  Created by Clint Cabanero on 5/23/15.
//  Copyright (c) 2015 Big Leaf Mobile LLC. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var label: WKInterfaceLabel!
    
    
    @IBAction func tapButton() {
        
        label.setText("Let me see your identification")
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
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
