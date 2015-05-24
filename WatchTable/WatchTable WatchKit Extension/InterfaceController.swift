//
//  InterfaceController.swift
//  WatchTable WatchKit Extension
//
//  Created by Clint Cabanero on 5/24/15.
//  Copyright (c) 2015 Big Leaf Mobile LLC. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // For holding label and icon for each Star Wars character
        var boba = ["name":"Boba Fett", "icon":"icon_boba"]
        var yoda = ["name":"Yoda", "icon":"icon_yoda"]
        var c3p0 = ["name":"C3P0", "icon":"icon_c3p0"]
        var chewbacca = ["name":"Chewie", "icon":"icon_chewbacca"]
        var emperor = ["name":"Emperor", "icon":"icon_emperor"]
        var leia = ["name":"Leia", "icon":"icon_leia"]
        var luke = ["name":"Luke", "icon":"icon_luke"]
        var obi = ["name":"Obi-Wan", "icon":"icon_obi"]
        var r2d2 = ["name":"R2D2", "icon":"icon_r2d2"]
        var solo = ["name":"Han Solo", "icon":"icon_solo"]
        var stormtropper = ["name":"Trooper", "icon":"icon_stormtrooper"]
        var vader = ["name":"Vader", "icon":"icon_vader"]
        
        // For holding a collection of all characters
        var characters = [boba, yoda, c3p0, chewbacca, emperor, leia, luke, obi, r2d2, solo, stormtropper, vader]
        
        // Iterate characters and create a table row
        table.setNumberOfRows(characters.count, withRowType: "TableRowController")
        for (index, item) in enumerate (characters) {
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

}
