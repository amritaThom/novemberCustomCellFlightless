//
//  ViewController.swift
//  customCellFlightlessNov
//
//  Created by Amy Giver on 11/10/16.
//  Copyright © 2016 Amy Giver Squid. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, CustomCellDelegate {
    
    let flightlessbirds = ["ostrich", "kiwi", "penguin"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view did load!!!!!!")
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell") as! CustomCell
        cell.buttonDelegate = self
        cell.customCellLabel.text = "My bird is \(flightlessbirds[indexPath.row])"
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flightlessbirds.count
    }
    
    func pictureButtonWasPressed(sender: CustomCell) {
        print ("Delegate received the message")
        let index = tableView.indexPathForCell(sender as UITableViewCell)?.row
        sender.customCellImage.image = UIImage(named: flightlessbirds[index!])
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

