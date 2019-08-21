//
//  OptionVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/13/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class OptionVC: UIViewController {
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIButton.appearance().layer.cornerRadius = 20
//        createButton.layer.cornerRadius = 20
//        loginButton.layer.cornerRadius = 20
    }
}
