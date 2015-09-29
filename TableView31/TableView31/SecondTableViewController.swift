//
//  SecondTableView.swift
//  TableView31
//
//  Created by Jeff Lee on 22/09/2015.
//  Copyright (c) 2015 Jeff Lee. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {

    @IBOutlet weak var tableView1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView1.delegate = self;
        tableView1.dataSource = self;
        
        tableView.registerNib(UINib(nibName: "MyCell2", bundle: nil), forCellReuseIdentifier: "MyCell2");
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell2", forIndexPath: indexPath) as MyCell2;
        cell.myLabel.text = "Hi mate \(indexPath.item)";
        
        return cell;
    }
}
