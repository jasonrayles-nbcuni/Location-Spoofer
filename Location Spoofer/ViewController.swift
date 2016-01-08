//
//  ViewController.swift
//  Location Spoofer
//
//  Created by Jason Rayles on 1/8/16.
//  Copyright © 2016 Jason Rayles. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager = CLLocationManager();
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        locationManager.requestAlwaysAuthorization();
        locationManager.startUpdatingLocation();
        
        self.mapView.showsUserLocation = true;
    }
}

