//
//  ReportViewController.swift
//  IOS2340
//
//  Created by Zachary Cheshire on 4/24/17.
//  Copyright © 2017 zcheshire. All rights reserved.
//

import UIKit
class ReportViewCell: UITableViewCell {
    
   
    @IBOutlet var userLabel: UILabel!
    @IBOutlet var conditionLabel: UILabel!
    
    @IBOutlet var IDLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
}
class ReportViewController: UITableViewController {
    
    // These strings will be the data for the table view cells
   
    var reports = model.getReports()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
   
    @IBAction func viewQuality(_ sender: Any) {
        print("\(model.getCurrentUser().getUserType()) hey")

        if (model.getCurrentUser().verifyType()) {
            print("\(model.getCurrentUser().getUserType())")
            performSegue(withIdentifier: "viewquality", sender: self)
            
            
        } else {
            
            
            
        }
    }
    // number of rows in table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.reports.count
    }
    
    // create a cell for each table view row
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reportcell", for: indexPath) as! ReportViewCell
        cell.userLabel.text = self.reports[indexPath.row].getUser().getUsername()
        cell.conditionLabel.text = self.reports[indexPath.row].getWaterCondition()
        cell.IDLabel.text = "id: \(self.reports[indexPath.row].getReportNumber()) "
        cell.typeLabel.text = self.reports[indexPath.row].getWaterType()
        cell.locationLabel.text = self.reports[indexPath.row].getLocation()


    
        
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
            reports.remove(at: indexPath.row)
            
            // delete the table view row
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Not used in our example, but if you were adding a new row, this is where you would do it.
        }
    }
    
}
