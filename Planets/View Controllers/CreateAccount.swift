//
//  EntryVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/12/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class CreateAccount: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var surname: UITextField!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var entryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createToolbar()
        
        entryButton.layer.cornerRadius = 20
    }
    
    @IBAction func entryTapped(_ sender: UIButton) {
        if username.text != "" && name.text != "" && surname.text != "" && email.text != "" && password.text != "" {
            Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (userData, error) in
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
                    
                    self.performSegue(withIdentifier: "toFirstMainVC", sender: nil)
                }
            }
        } else {
            let alert = UIAlertController(title: "Error", message: "Username/Password is Empty!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func createToolbar() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        // Customizations
        toolBar.barTintColor = .black
        toolBar.tintColor = .white
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(CreateAccount.dismissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        username?.inputAccessoryView = toolBar
        name?.inputAccessoryView = toolBar
        surname?.inputAccessoryView = toolBar
        email?.inputAccessoryView = toolBar
        password?.inputAccessoryView = toolBar
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
