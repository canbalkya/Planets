//
//  ProfileVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/10/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var profileUsername: UILabel!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileSurname: UILabel!
    
    @IBOutlet weak var profileEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func editTapped(_ sender: UIBarButtonItem) {
    }
}
