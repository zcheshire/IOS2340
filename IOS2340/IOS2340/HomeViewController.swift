//
//  HomeViewController.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/23/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class HomeViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBAction func logout(_ sender: Any) {
        
        model.setCurrentUser(user: User(username: "",password: ""))
        
    }
    @IBAction func createReport(_ sender: Any) {
    }
    @IBAction func viewQualityForm(_ sender: Any) {
        if (model.getCurrentUser().verifyType()) {
            print("\(model.getCurrentUser().getUserType())")
            performSegue(withIdentifier: "qualityformview", sender: self)
            
            
        } else {
            
            
            
        }
    }
}
