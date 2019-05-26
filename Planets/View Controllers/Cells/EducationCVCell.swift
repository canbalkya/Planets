//
//  EducationCVCell.swift
//  Planets
//
//  Created by Can Balkaya on 5/26/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class EducationCVCell: UICollectionViewCell {
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        button.layer.shadowRadius = 10
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
    }
}
