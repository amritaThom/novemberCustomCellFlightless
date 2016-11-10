//
//  CustomCell.swift
//  customCellFlightlessNov
//
//  Created by Amy Giver on 11/10/16.
//  Copyright © 2016 Amy Giver Squid. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    var buttonDelegate : CustomCellDelegate?

    
    @IBOutlet weak var customCellLabel: UILabel!
    
    @IBOutlet weak var customCellImage: UIImageView!
    
    @IBAction func customCellButton(sender: UIButton) {
        print("Button pressed")
        buttonDelegate?.pictureButtonWasPressed(self)
    }
    
    
    
    
    
}
