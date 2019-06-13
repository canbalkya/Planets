//
//  LoginVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/13/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 20
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
    }
}
