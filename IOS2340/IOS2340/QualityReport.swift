//
//  Report.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/24/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import Foundation
class QualityReport {
    
    private var location: String
    private var user: User
    private var longitude: String
    private var latitude: String
    private var waterCondition: String
    private var virusPPM: String
    private var contaminantPPM: String
    private static var reportNumber = 0
    private var id: String
    
    init(user: User,location: String,longitude: String,latitude: String,waterCondition: String,virusPPM: String,contaminantPPM: String) {
        self.user = user
        self.location = location
        self.longitude = longitude
        self.latitude = latitude
        self.waterCondition = waterCondition
        self.virusPPM = virusPPM
        self.contaminantPPM = contaminantPPM
        QualityReport.reportNumber += 1
        self.id = "\(QualityReport.reportNumber)"
    }
    
    func getLocation() -> String {
        return self.location
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

    func getWaterCondition() -> String {
        return self.waterCondition
    }
    func getVirusPPM() -> String {
        return self.virusPPM
    }
    func getContaminantPPM() -> String {
        return self.contaminantPPM
    }
    func getReportNumber() -> String {
        return self.id
    }
    
}
