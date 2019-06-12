//
//  EntryVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/12/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class EntryVC: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var surname: UITextField!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var entryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        entryButton.layer.cornerRadius = 20
    }
    
    @IBAction func entryTapped(_ sender: UIButton) {
    }
}
