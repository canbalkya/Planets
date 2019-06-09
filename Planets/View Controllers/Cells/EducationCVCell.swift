//
//  EducationCVCell.swift
//  Planets
//
//  Created by Can Balkaya on 5/26/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class EducationTVCell: UITableViewCell {
    @IBOutlet weak var educationView: UIView!
    @IBOutlet weak var educationButton: UIButton!
    @IBOutlet weak var educationTitle: UILabel!
    @IBOutlet weak var educationTextView: UITextView!
    @IBOutlet weak var educationImageView: UIImageView!
    @IBOutlet weak var blur: UIVisualEffectView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        educationView.layer.cornerRadius = 20
        educationImageView.layer.cornerRadius = 20
        blur.layer.cornerRadius = 20
        blur.layer.masksToBounds = true
        educationImageView.contentMode = .scaleAspectFill
        selectionStyle = .none
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
    }
}
