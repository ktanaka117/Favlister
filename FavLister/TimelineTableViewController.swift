//
//  TimelineTableViewController.swift
//  FavLister
//
//  Created by 田中賢治 on 2015/12/27.
//  Copyright © 2015年 田中賢治. All rights reserved.
//

import UIKit

class TimelineTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        TwitterManager.getTimeline() { tweets in
            
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    
}
