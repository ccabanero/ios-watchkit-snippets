//
//  DetailInterfaceController.swift
//  WatchHierarchicalNavigation
//
//  Created by Clint Cabanero on 5/24/15.
//  Copyright (c) 2015 Big Leaf Mobile LLC. All rights reserved.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {

    var castMember: Dictionary<String, String>!
    
    @IBOutlet weak var image: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // For receiving data from segue
        if let castMember = context as? Dictionary<String, String> {
            self.castMember = castMember
            image.setImageNamed(castMember["icon"])
        }
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
