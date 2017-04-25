//
//  ViewController.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/23/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userType: UISegmentedControl!
    @IBOutlet var warningLabel: UILabel!
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        warningLabel.alpha = 0
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func login(_ sender: Any) {
        print(usernameField.text!)
        if (model.login(user: User(username: usernameField.text!,password: passwordField.text!))) {
            print(model.getCurrentUser().getUserType())
            performSegue(withIdentifier: "viewhome", sender: self)

    
        } else {
            
            warningLabel.text = "Error, Wrong Username/Password"
            warningLabel.alpha = 1
            
            
        }
    }
    @IBAction func register(_ sender: Any) {
        if (model.register(user: User(username: usernameField.text!,password: passwordField.text!, userType: userType.titleForSegment(at: userType.selectedSegmentIndex)!))) {
            
            
        } else {
            
            warningLabel.text = "Error, \(usernameField.text!) is taken"
            warningLabel.alpha = 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

