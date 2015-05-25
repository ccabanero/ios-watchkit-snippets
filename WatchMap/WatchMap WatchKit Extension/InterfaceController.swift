//
//  InterfaceController.swift
//  WatchMap WatchKit Extension
//
//  Created by Clint Cabanero on 5/25/15.
//  Copyright (c) 2015 Big Leaf Mobile LLC. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var map: WKInterfaceMap!
    
    func initializeMap() {
        
        //set default map center and zoom level
        let defaultLocation = CLLocationCoordinate2D(latitude: 47.606209, longitude: -122.33207)
        let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        let region = MKCoordinateRegion(center: defaultLocation, span: defaultSpan)
        map.setRegion(region)
        
        //add pin for map center
        map.addAnnotation(defaultLocation, withPinColor: WKInterfaceMapPinColor.Red)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        initializeMap()
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
