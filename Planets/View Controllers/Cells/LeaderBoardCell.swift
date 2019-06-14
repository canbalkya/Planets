//
//  LeaderBoardCell.swift
//  Planets
//
//  Created by Can Balkaya on 6/14/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class LeaderBoardCell: UITableViewCell {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
