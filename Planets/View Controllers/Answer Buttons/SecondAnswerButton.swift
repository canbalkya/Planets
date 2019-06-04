//
//  SecondAnswerButton.swift
//  Planets
//
//  Created by Can Balkaya on 6/4/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class SecondAnswerButton: UIButton {
    @IBInspectable var isChecked:Bool = false {
        didSet {
            self.touch()
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(SecondAnswerButton.buttonClicked), for: UIControlEvents.touchUpInside)
        self.touch()
    }
    
    func touch() {
        if isChecked == true {
            self.backgroundColor = #colorLiteral(red: 0.08387736344, green: 0.08470783239, blue: 0.08470783239, alpha: 1)
            secondOpen = true
        } else {
            self.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
            secondOpen = false
        }
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}
