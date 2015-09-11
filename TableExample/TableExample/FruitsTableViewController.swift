//
//  FruitsTableViewController.swift
//  TableExample
//
//  Created by Jeff Lee on 11/09/2015.
//  Copyright (c) 2015 Jeff Lee. All rights reserved.
//

import UIKit

class FruitsTableViewController: UITableViewController {

    var data = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
        "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
        "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
        "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
        "Pear", "Pineapple", "Raspberry", "Strawberry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.editing = true
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    // MARK: - UITableViewDataSource

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FruitCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
    
//    override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
//        return .None
//    }
//    
//    override func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        return false
//    }

    override func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let moveObject = self.data[sourceIndexPath.row]
        data.removeAtIndex(sourceIndexPath.row)
        data.insert(moveObject, atIndex: destinationIndexPath.row)
        NSLog("%@","\(sourceIndexPath.row) => \(destinationIndexPath.row) \(data)")
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            data.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
}
