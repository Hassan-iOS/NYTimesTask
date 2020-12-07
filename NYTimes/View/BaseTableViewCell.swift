//
//  BaseTableViewCell.swift
//  NYTimes
//
//  Created by Hassan Mostafa on 12/7/20.
//  Copyright © 2020 Hassan Mostafa. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
    
    //To get the UINib
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    //To get the identifer name same as Cell name
    static var identifier: String {
        return String(describing: self)
    }
}
