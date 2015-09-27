//
//  FirstTableViewController.swift
//  TableView31
//
//  Created by Jeff Lee on 22/09/2015.
//  Copyright (c) 2015 Jeff Lee. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 3
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell;
        
        if (indexPath.section == 0) {
            cell = tableView.dequeueReusableCellWithIdentifier("MyCell1_2", forIndexPath: indexPath) as UITableViewCell
            cell.textLabel?.text = "George"
        } else {
            cell = tableView.dequeueReusableCellWithIdentifier("MyCell1_1", forIndexPath: indexPath) as UITableViewCell
            cell.textLabel?.text = "Julia \(indexPath.row)"
        }
        
        // Configure the cell...
        //cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        //cell.textLabel?.text = "George"
        
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.section == 1) {
           self.performSegueWithIdentifier("mySeque", sender: self)
        }
    }
}
