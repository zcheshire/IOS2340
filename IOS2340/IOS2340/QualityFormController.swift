//
//  QualityFormController.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/24/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//
import UIKit
import Foundation
class QualityFormController: UIViewController {
    
    @IBOutlet weak var waterCondition: UISegmentedControl!
    
    @IBOutlet weak var contaminantPPMCount: UITextField!
    @IBOutlet weak var virusPPMCount: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var reportLocation: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
          usernameLabel.text = model.getCurrentUser().getUsername()
    }
  
    @IBAction func submitReport(_ sender: Any) {
        model.addQualityReport(report: QualityReport(user: model.getCurrentUser(),location: reportLocation.text!,longitude: "43",latitude: "90",waterCondition: waterCondition.titleForSegment(at: waterCondition.selectedSegmentIndex)!, virusPPM: virusPPMCount.text!,contaminantPPM: contaminantPPMCount.text!))
    }
}
