//
//  TableInterfaceController.swift
//  WatchHierarchicalNavigation
//
//  Created by Clint Cabanero on 5/24/15.
//  Copyright (c) 2015 Big Leaf Mobile LLC. All rights reserved.
//

import WatchKit
import Foundation


class TableInterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    var castMembers = [Dictionary<String, String>]()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // For holding label and icon for each Star Wars character
        var obi = ["name":"Obi-Wan", "icon":"icon_obi"]
        var r2d2 = ["name":"R2D2", "icon":"icon_r2d2"]
        var stormtropper = ["name":"Trooper", "icon":"icon_stormtrooper"]
        var vader = ["name":"Vader", "icon":"icon_vader"]
        
        castMembers.append(obi)
        castMembers.append(r2d2)
        castMembers.append(stormtropper)
        castMembers.append(vader)
        
        // Iterate castMembers and create a table row
        table.setNumberOfRows(castMembers.count, withRowType: "TableRowController")
        for (index, item) in enumerate (castMembers) {
            let row = table.rowControllerAtIndex(index) as! TableRowController
            row.rowLabel.setText(item["name"])
            row.rowImage.setImageNamed(item["icon"])
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
    
    //  For passing data
    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
            if segueIdentifier == "DetailsSegue" {
                let castMember = castMembers[rowIndex]
                return castMember
            }
            return nil
    }
}
