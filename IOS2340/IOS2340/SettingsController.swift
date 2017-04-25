//
//  SettingsController.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/24/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import Foundation
import UIKit

class SettingsController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        warningLabel.alpha = 0
        usernameLabel.text = model.getCurrentUser().getUsername()
    }
    
    @IBAction func confirm(_ sender: Any) {
        
        if model.changeSettings(user: User(username: usernameTextField.text!,password: passwordTextField.text!)) {
            
            warningLabel.text = "Account deatils have been updated"
            warningLabel.alpha = 1
            
        } else {
            
            warningLabel.text = "Sorry the username \(usernameTextField.text!) is taken"
            warningLabel.alpha = 1
        }
        
    }
}
