//
//  QuestionVC.swift
//  Planets
//
//  Created by Can Balkaya on 5/28/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class QuestionVC: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionTextView: UITextView!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.layer.cornerRadius = 10
        secondButton.layer.cornerRadius = 10
        thirdButton.layer.cornerRadius = 10
        fourthButton.layer.cornerRadius = 10
    }
    
    @IBAction func firstActionButton(_ sender: UIButton) {
    }
    
    @IBAction func secondActionButton(_ sender: UIButton) {
    }
    
    @IBAction func thirdActionButton(_ sender: UIButton) {
    }
    
    @IBAction func fourthButton(_ sender: UIButton) {
    }
}
