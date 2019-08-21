//
//  LoginVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/13/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button()
//        loginButton.layer.cornerRadius = 20
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        if emailTextField.text != "" && passwordTextField.text != "" {
            Auth.auth().signIn(withEmail: emailTextField.text!, link: passwordTextField.text!) { (userData, error) in
                if error != nil {
                    let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                    let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
                    alert.addAction(okButton)
                    self.present(alert, animated: true, completion: nil)
                } else {
                    UserDefaults.standard.set(userData!.user.email, forKey: "user")
                    UserDefaults.standard.synchronize()
                    
                    let delegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
                    delegate.rememberUser()
                    
                    self.performSegue(withIdentifier: "toTabBar", sender: nil)
                }
            }
        } else {
            let alert = UIAlertController(title: "Error", message: "Username/Password is Empty!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
}
