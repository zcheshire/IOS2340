//
//  User.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/23/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import Foundation

class User {
    
    var username: String
    var password: String
    var userType: String
    
    init (username: String, password: String, userType: String) {
        self.username = username
        self.password = password
        self.userType = userType
    }
    convenience init(username: String, password: String) {
        self.init(username: username, password: password, userType: "User")
    }
    
    func getUserType() -> String {
        return self.userType
    }
    func setUserType(userType: String) -> Void {
        self.userType = userType
    }
    
    func getUsername() -> String {
        return self.username
    }
    func verifyType() -> Bool {
        if (model.getCurrentUser().getUserType() == "Worker" || model.getCurrentUser().getUserType() == "Manager" || model.getCurrentUser().getUserType() == "Admin") {
            
            return true
            
        } else {
            
            return false
            
        }
        
    }
    func getPassword() -> String {
        return self.password
    }
    func setUsername(username: String) -> Void {
        self.username = username
    }
    func setPassword(password: String) -> Void {
        self.password = password
    }
    
    
    
}
