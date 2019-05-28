//
//  EducationCVCell.swift
//  Planets
//
//  Created by Can Balkaya on 5/26/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class EducationCVCell: UICollectionViewCell {
    @IBOutlet weak var educationButton: UIButton!
    @IBOutlet weak var educationTitle: UILabel!
    @IBOutlet weak var educationTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        educationButton.layer.cornerRadius = 10
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
    }
}
