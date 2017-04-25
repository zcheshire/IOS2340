//
//  Report.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/24/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import Foundation
class Report {
    
    private var location: String
    private var user: User
    private var longitude: String
    private var latitude: String
    private var waterType: String
    private var waterCondition: String
    static var reportNumber = 0
    private var id: String
    
    init(user: User,location: String,longitude: String,latitude: String, waterType: String,waterCondition: String) {
        self.user = user
        self.location = location
        self.longitude = longitude
        self.latitude = latitude
        self.waterType = waterType
        self.waterCondition = waterCondition
        Report.reportNumber += 1
        id = "\(Report.reportNumber)"
    }
    
    func getLocation() -> String {
        return self.location
    }
    func getReportNumber() -> String {
        
        return id
    }
    func getUser() -> User {
        return self.user
    }
    func getLongituden() -> String {
        return self.longitude
    }
    func getLatitude() -> String {
        return self.latitude
    }
    func getWaterType() -> String {
        return self.waterType
    }
    func getWaterCondition() -> String {
        return self.waterCondition
    }
    
    
}
