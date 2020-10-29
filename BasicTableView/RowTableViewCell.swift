//
//  RowTableViewCell.swift
//  BasicTableView
//
//  Created by tuannguyen on 10/29/20.
//  Copyright © 2020 tuannguyen. All rights reserved.
//

import UIKit

class RowTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCar: UIImageView!
    @IBOutlet weak var labelCar: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
