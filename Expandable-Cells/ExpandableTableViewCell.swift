//
//  ExpandableTableViewCell.swift
//  Expandable-Cells
//
//  Created by Hiso3D on 8/12/16.
//  Copyright © 2016 Hiso3D. All rights reserved.
//

import UIKit

class ExpandableTableViewCell: UITableViewCell {

    
    @IBOutlet var name : UILabel!
    @IBOutlet var desc : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
