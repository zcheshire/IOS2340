//
//  ReportViewController.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/24/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import UIKit
class PurityViewCell: UITableViewCell {
    
    @IBOutlet weak var IDLabel: UILabel!
    
    @IBOutlet weak var userLabel: UILabel!

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var contaminantLabel: UILabel!
    @IBOutlet weak var virusLabel: UILabel!
}
class PurityViewController: UITableViewController {
    
    // These strings will be the data for the table view cells
    
    var qualityReports = model.getQualityReports()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // number of rows in table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.qualityReports.count
    }
    
    // create a cell for each table view row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "qualityreportcell", for: indexPath) as! PurityViewCell
        cell.userLabel.text = self.qualityReports[indexPath.row].getUser().getUsername()
        cell.conditionLabel.text = self.qualityReports[indexPath.row].getWaterCondition()
        cell.IDLabel.text = "id: \(self.qualityReports[indexPath.row].getReportNumber()) "
        cell.contaminantLabel.text = self.qualityReports[indexPath.row].getContaminantPPM()
        cell.virusLabel.text = self.qualityReports[indexPath.row].getVirusPPM()
        
        
        
        
        return cell
    }
 
    
    // method to run when table view cell is tapped
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
    
    // this method handles row deletion
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            // remove the item from the data model
            qualityReports.remove(at: indexPath.row)
            
            // delete the table view row
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Not used in our example, but if you were adding a new row, this is where you would do it.
        }
    }
    
}
