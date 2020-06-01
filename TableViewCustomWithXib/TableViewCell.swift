//
//  TableViewCell.swift
//  TableViewCustomWithXib
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 01/06/20.
//  Copyright © 2020 Muhammad Ilham Ashiddiq Tresnawan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
