//
//  Model.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/23/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import UIKit
let model = Model()
class Model: NSObject {
    private var currentUser: User
    private var userList: [User]
    private var reportList: [Report]
    private var qualityReportList: [QualityReport]

    
    override init() {
        self.currentUser = User(username: "", password: "")
        self.userList = []
        self.reportList = []
        self.qualityReportList = []

        super.init()
    }
    //1
    class var sharedInstance: Model {
        //2
        struct Singleton {
            //3
            static let instance = Model()
        }
        //4
        return Singleton.instance
}
    
    func setCurrentUser(user: User) -> Void {
    
    self.currentUser = user
    
    }
    func getCurrentUser() -> User {
        
        return self.currentUser
        
    }
    func addReport(report: Report) -> Void {
        reportList.append(report)
    }
    func getReports() -> [Report] {
        return self.reportList
    }
    func addQualityReport(report: QualityReport) -> Void {
        qualityReportList.append(report)
    }
    func getQualityReports() -> [QualityReport] {
        return self.qualityReportList
    }
    func addUser(user: User) -> Void {
        userList.append(user)
    }
    func login(user: User) -> Bool {
        for item in userList {
            
            if (item.getUsername() == user.getUsername()) {
                
                if (item.getPassword() == user.getPassword()) {
                    model.setCurrentUser(user: item)
                    
                    return true
                    
                }
                
            }
            
        }
        return false
    }
    func register(user: User) -> Bool {
        for item in userList {
            
            if (item.getUsername() == user.getUsername()) {
                
               return false
                
            }
            
        }
        model.addUser(user: user)
        model.setCurrentUser(user: user)
        
        return true
    }
    func changeSettings(user: User) -> Bool {
        for item in userList {
            
            if (item.getUsername() == user.getUsername()) {
                
                return false
                
            }
            
        }
        model.getCurrentUser().setUsername(username: user.getUsername())
        model.getCurrentUser().setPassword(password: user.getPassword())
        
        return true
    }
    

}
