//
//  BleedingViewControllerTableViewCell.swift
//  MedGuide
//
//  Created by Christian Limansyah on 30/04/18.
//  Copyright © 2018 Gior Fasolini. All rights reserved.
//

import UIKit

class BleedingViewControllerTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myImage_Bleeding: UIImageView!
    @IBOutlet weak var myStepLabel_Bleeding: UILabel!
    @IBOutlet weak var myExplanation_Bleeding: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
