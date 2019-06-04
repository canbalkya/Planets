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
    
    var question = 1
    var trueAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.layer.cornerRadius = 10
        secondButton.layer.cornerRadius = 10
        thirdButton.layer.cornerRadius = 10
        fourthButton.layer.cornerRadius = 10
        
        switch question {
        case 1:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)

        case 2:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)

        case 3:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)

        case 4:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)

        case 5:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)

        case 6:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)

        case 7:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)

        case 8:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)

        case 9:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)

        case 10:
            questionLabel.text = "\(firstQuestion.count)."
            questionTextView.text = "\(firstQuestion.question)"

            firstButton.setTitle("\(firstQuestion.answers[0])", for: .normal)
            secondButton.setTitle("\(firstQuestion.answers[1])", for: .normal)
            thirdButton.setTitle("\(firstQuestion.answers[2])", for: .normal)
            fourthButton.setTitle("\(firstQuestion.answers[3])", for: .normal)
        default:
            fatalError("It's impossible!")
        }
    }
    
    @IBAction func checkAction(_ sender: UIBarButtonItem) {
        question += 1
    }
}
