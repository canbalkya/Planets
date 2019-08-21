//
//  EditVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/12/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class EditVC: UIViewController {
    @IBOutlet weak var editImageView: UIImageView!
    
    @IBOutlet weak var editUsername: UITextField!
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editSurname: UITextField!
    
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editPassword: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button()
//        saveButton.layer.cornerRadius = 20
    }
    
    @IBAction func saveTapped(_ sender: UIButton) {
    }
    
    @IBAction func logOutTapped(_ sender: UIBarButtonItem) {
    }
}
