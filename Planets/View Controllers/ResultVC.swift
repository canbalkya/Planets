//
//  ResultVC.swift
//  Planets
//
//  Created by Can Balkaya on 5/28/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var trueLabel: UILabel!
    @IBOutlet weak var falseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if trueAnswer == 10 {
            commentLabel.text = "Amazing!"
        } else if trueAnswer >= 7 && trueAnswer < 10 {
            commentLabel.text = "Congratulations!"
        } else if trueAnswer >= 4 && trueAnswer < 7 {
            commentLabel.text = "Not bad..."
        } else if trueAnswer >= 1 && trueAnswer > 4 {
            commentLabel.text = "Bad..."
        } else if trueAnswer == 0 {
            commentLabel.text = "Really?!"
        }
        
        trueLabel.text = "TRUE: \(trueAnswer)"
        falseLabel.text = "FALSE: \(10 - trueAnswer)"
    }
    
    @IBAction func button(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toTabBar", sender: nil)
        trueAnswer = 0
    }
}
