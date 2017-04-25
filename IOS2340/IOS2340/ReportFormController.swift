//
//  ReportFormController.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/24/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import Foundation
import UIKit
class ReportFormController: UIViewController{
    
    @IBOutlet weak var reportLocation: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var waterType: UISegmentedControl!

    @IBOutlet weak var waterCondition: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(model.getCurrentUser().getUsername())
        // Do any additional setup after loading the view, typically from a nib.
        usernameLabel.text = model.getCurrentUser().getUsername()

    }
    @IBAction func submitReport(_ sender: Any) {
        model.addReport(report: Report(user: model.getCurrentUser(),location: reportLocation.text!, longitude: "43", latitude: "90",waterType: waterType.titleForSegment(at: waterType.selectedSegmentIndex)!,waterCondition: waterCondition.titleForSegment(at: waterCondition.selectedSegmentIndex)!))

    }
}
