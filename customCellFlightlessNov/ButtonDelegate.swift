//
//  ButtonDelegate.swift
//  customCellFlightlessNov
//
//  Created by Amy Giver on 11/10/16.
//  Copyright © 2016 Amy Giver Squid. All rights reserved.
//

import Foundation
import UIKit

protocol ButtonDelegate: class {
    func buttonWasPressedFrom(sender: CustomCell)
}
