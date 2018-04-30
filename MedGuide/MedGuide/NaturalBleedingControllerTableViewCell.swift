//
//  NaturalBleedingControllerTableViewCell.swift
//  MedGuide
//
//  Created by Christian Limansyah on 30/04/18.
//  Copyright © 2018 Gior Fasolini. All rights reserved.
//

import UIKit

class NaturalBleedingControllerTableViewCell: UITableViewCell {

   
    @IBOutlet weak var myImage_Natural: UIImageView!
    @IBOutlet weak var myStepLabel_Natural: UILabel!
    @IBOutlet weak var myExplanationLabel_Natural: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
