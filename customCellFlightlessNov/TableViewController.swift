//
//  ViewController.swift
//  customCellFlightlessNov
//
//  Created by Amy Giver on 11/10/16.
//  Copyright © 2016 Amy Giver Squid. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, ButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view did load!!!!!!")
        // Do any additional setup after loading the view, typically from a nib.
    }
    let birds = ["ostrich", "kiwi", "penguin"]
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell") as! CustomCell
        cell.buttonDelegate = self
        cell.customCellLabel.text = birds[indexPath.row]
        //cell.customCellImage.image = UIImage(named: "ostrich")
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birds.count
    }
    
    func buttonWasPressedFrom(sender: CustomCell) {
        sender.customCellImage.image = UIImage(named: sender.customCellLabel.text!)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

