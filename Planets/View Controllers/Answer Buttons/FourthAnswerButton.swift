//
//  FourthAnswerButton.swift
//  Planets
//
//  Created by Can Balkaya on 6/4/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class FourthAnswerButton: UIButton {
    @IBInspectable var isChecked:Bool = false {
        didSet {
            self.touch()
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(FourthAnswerButton.buttonClicked), for: UIControl.Event.touchUpInside)
        self.touch()
    }
    
    func touch() {
        if isChecked == true {
            self.backgroundColor = #colorLiteral(red: 0.06685347233, green: 0.06819054178, blue: 0.06819054178, alpha: 1)
            fourthOpen = true
        } else {
            self.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
            fourthOpen = false
        }
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}
