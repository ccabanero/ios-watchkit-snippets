//
//  InterfaceController.swift
//  WatchMapUserLocation WatchKit Extension
//
//  Created by Clint Cabanero on 5/25/15.
//  Copyright (c) 2015 Big Leaf Mobile LLC. All rights reserved.
//

import WatchKit
import Foundation
import CoreLocation

class InterfaceController: WKInterfaceController, CLLocationManagerDelegate {

    @IBOutlet weak var map: WKInterfaceMap!
    
    var locationManager = CLLocationManager()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        updateMapCenterAndZoomLevel(47.606209, lng: -122.33207, spanDelta: 0.002)
        
        initializeLocationManager()
    }

    //  For initializing the default map center and zoom level
    func updateMapCenterAndZoomLevel(lat: CLLocationDegrees, lng: CLLocationDegrees, spanDelta: CLLocationDegrees) {
        
        // Set default map center and zoom level
        let newLocation = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        let defaultSpan = MKCoordinateSpan(latitudeDelta: spanDelta, longitudeDelta: spanDelta)
        let region = MKCoordinateRegion(center: newLocation, span: defaultSpan)
        map.setRegion(region)
        
        // Add pin at location
        map.addAnnotation(newLocation, withPinColor: WKInterfaceMapPinColor.Red)
    }
    
    //  For initializing the LocationManager
    func initializeLocationManager() {
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    //  CLLocationManagerDelegate method: invoked when a new location arrives
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        
        println(locations)
        
        // Fetch the first location
        let locationArray = locations as NSArray
        let location = locationArray[0] as! CLLocation
        
        //  Update map center
        updateMapCenterAndZoomLevel(location.coordinate.latitude, lng: location.coordinate.longitude, spanDelta: 0.002)
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
