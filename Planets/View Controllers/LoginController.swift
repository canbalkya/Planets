//
//  EntryVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/12/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
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
        
        if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == true {
            let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! FirstMainVC
            self.navigationController?.pushViewController(homeVC, animated: false)
        }
    }
    
    @IBAction func entryTapped(_ sender: UIButton) {
        if username.text == "test" && name.text == "test" && surname.text == "test" && email.text == "test" && password.text == "test" {
            UserDefaults.standard.set(true, forKey: "ISUSERLOGGEDIN")
            let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! FirstMainVC
            self.navigationController?.pushViewController(homeVC, animated: true)
            
            username.text = ""
            name.text = ""
            surname.text = ""
            email.text = ""
            password.text = ""
            
//            performSegue(withIdentifier: "toFirstMainVC", sender: nil)
        }
    }
    
    func createToolbar() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        // Customizations
        toolBar.barTintColor = .black
        toolBar.tintColor = .white
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(LoginController.dismissKeyboard))
        
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
