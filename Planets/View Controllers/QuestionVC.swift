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
    
    @IBOutlet weak var nextBarButtonItem: UIBarButtonItem!
    
    var question = 1
    
    var trueButton = UIButton()
    var trueOpen = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button()
//        firstButton.layer.cornerRadius = 10
//        secondButton.layer.cornerRadius = 10
//        thirdButton.layer.cornerRadius = 10
//        fourthButton.layer.cornerRadius = 10
        
        questionLabel.text = "\(question1SS.count)."
        questionTextView.text = "\(question1SS.question)"
        
        firstButton.setTitle("\(question1SS.answers[0])", for: .normal)
        secondButton.setTitle("\(question1SS.answers[1])", for: .normal)
        thirdButton.setTitle("\(question1SS.answers[2])", for: .normal)
        fourthButton.setTitle("\(question1SS.answers[3])", for: .normal)
    }
    
    @IBAction func checkAction(_ sender: UIBarButtonItem) {
        if question == 1 {
            trueButton = secondButton
            trueOpen = secondOpen
            
            if secondOpen == true {
                trueAnswer += 1
                if trueAnswer >= 1 {
                    trueAnswer = 1
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 2 {
            trueButton = thirdButton
            trueOpen = thirdOpen
            
            if thirdOpen == true {
                trueAnswer += 1
                if trueAnswer >= 2 {
                    trueAnswer = 2
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 3 {
            trueButton = firstButton
            trueOpen = firstOpen
            
            if firstOpen == true {
                trueAnswer += 1
                if trueAnswer >= 3 {
                    trueAnswer = 3
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 4 {
            trueButton = firstButton
            trueOpen = firstOpen
            
            if firstOpen == true {
                trueAnswer += 1
                if trueAnswer >= 4 {
                    trueAnswer = 4
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 5 {
            trueButton = firstButton
            trueOpen = firstOpen
            
            if firstOpen == true {
                trueAnswer += 1
                if trueAnswer >= 5 {
                    trueAnswer = 5
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 6 {
            trueButton = fourthButton
            trueOpen = fourthOpen
            
            if fourthOpen == true {
                trueAnswer += 1
                if trueAnswer >= 6 {
                    trueAnswer = 6
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 7 {
            trueButton = fourthButton
            trueOpen = fourthOpen
            
            if fourthOpen == true {
                trueAnswer += 1
                if trueAnswer >= 7 {
                    trueAnswer = 7
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 8 {
            trueButton = secondButton
            trueOpen = secondOpen
            
            if secondOpen == true {
                trueAnswer += 1
                if trueAnswer >= 8 {
                    trueAnswer = 8
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 9 {
            trueButton = secondButton
            trueOpen = secondOpen
            
            if secondOpen == true {
                trueAnswer += 1
                if trueAnswer >= 9 {
                    trueAnswer = 9
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 10 {
            trueButton = thirdButton
            trueOpen = thirdOpen
            
            if thirdOpen == true {
                trueAnswer += 1
                if trueAnswer >= 10 {
                    trueAnswer = 10
                }
                
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func nextButton(_ sender: UIBarButtonItem) {
        question += 1
        nextBarButtonItem.isEnabled = false
        trueButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        trueOpen = false
        
        if question == 1 {
            questionLabel.text = "\(question1SS.count)."
            questionTextView.text = "\(question1SS.question)"
            
            firstButton.setTitle("\(question1SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question1SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question1SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question1SS.answers[3])", for: .normal)
        } else if question == 2 {
            questionLabel.text = "\(question2SS.count)."
            questionTextView.text = "\(question2SS.question)"
            
            firstButton.setTitle("\(question2SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question2SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question2SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question2SS.answers[3])", for: .normal)
        } else if question == 3 {
            questionLabel.text = "\(question3SS.count)."
            questionTextView.text = "\(question3SS.question)"
            
            firstButton.setTitle("\(question3SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question3SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question3SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question3SS.answers[3])", for: .normal)
        } else if question == 4 {
            questionLabel.text = "\(question4SS.count)."
            questionTextView.text = "\(question4SS.question)"
            
            firstButton.setTitle("\(question4SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question4SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question4SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question4SS.answers[3])", for: .normal)
        } else if question == 5 {
            questionLabel.text = "\(question5SS.count)."
            questionTextView.text = "\(question5SS.question)"
            
            firstButton.setTitle("\(question5SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question5SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question5SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question5SS.answers[3])", for: .normal)
        } else if question == 6 {
            questionLabel.text = "\(question6SS.count)."
            questionTextView.text = "\(question6SS.question)"
            
            firstButton.setTitle("\(question6SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question6SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question6SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question6SS.answers[3])", for: .normal)
        } else if question == 7 {
            questionLabel.text = "\(question7SS.count)."
            questionTextView.text = "\(question7SS.question)"
            
            firstButton.setTitle("\(question7SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question7SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question7SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question7SS.answers[3])", for: .normal)
        } else if question == 8 {
            questionLabel.text = "\(question8SS.count)."
            questionTextView.text = "\(question8SS.question)"
            
            firstButton.setTitle("\(question8SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question8SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question8SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question8SS.answers[3])", for: .normal)
        } else if question == 9 {
            questionLabel.text = "\(question9SS.count)."
            questionTextView.text = "\(question9SS.question)"
            
            firstButton.setTitle("\(question9SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question9SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question9SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question9SS.answers[3])", for: .normal)
        } else if question == 10 {
            questionLabel.text = "\(question10SS.count)."
            questionTextView.text = "\(question10SS.question)"
            
            firstButton.setTitle("\(question10SS.answers[0])", for: .normal)
            secondButton.setTitle("\(question10SS.answers[1])", for: .normal)
            thirdButton.setTitle("\(question10SS.answers[2])", for: .normal)
            fourthButton.setTitle("\(question10SS.answers[3])", for: .normal)
        } else if question == 11 {
            performSegue(withIdentifier: "toResultVC", sender: nil)
        }
    }
    
    @IBAction func firstTapped(_ sender: FirstAnswerButton) {
        firstOpen = true
        firstButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
        secondOpen = false
        secondButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        thirdOpen = false
        thirdButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        fourthOpen = false
        fourthButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
    }
    
    @IBAction func secondTapped(_ sender: SecondAnswerButton) {
        firstOpen = false
        firstButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        secondOpen = true
        secondButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
        thirdOpen = false
        thirdButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        fourthOpen = false
        fourthButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
    }
    
    @IBAction func thirdTapped(_ sender: ThirdAnswerButton) {
        firstOpen = false
        firstButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        secondOpen = false
        secondButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        thirdOpen = true
        thirdButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
        fourthOpen = false
        fourthButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
    }
    
    @IBAction func fourthTapped(_ sender: FourthAnswerButton) {
        firstOpen = false
        firstButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        secondOpen = false
        secondButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        thirdOpen = false
        thirdButton.backgroundColor = #colorLiteral(red: 0.09410236031, green: 0.09412645549, blue: 0.09410081059, alpha: 1)
        fourthOpen = true
        fourthButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
    }
}
