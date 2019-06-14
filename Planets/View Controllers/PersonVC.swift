//
//  PersonVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/14/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class PersonVC: UIViewController {
    @IBOutlet weak var personUserNameLabel: UILabel!
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var personSurnameLabel: UILabel!
    @IBOutlet weak var personFollowesLabel: UILabel!
    @IBOutlet weak var personEmailLabel: UILabel!
    
    @IBOutlet weak var followButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        followButton.layer.cornerRadius = 20
    }
    
    @IBAction func followTapped(_ sender: UIButton) {
    }
}
