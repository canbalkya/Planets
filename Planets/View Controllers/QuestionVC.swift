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
        firstButton.layer.cornerRadius = 10
        secondButton.layer.cornerRadius = 10
        thirdButton.layer.cornerRadius = 10
        fourthButton.layer.cornerRadius = 10
        
        questionLabel.text = "\(question1.count)."
        questionTextView.text = "\(question1.question)"
        
        firstButton.setTitle("\(question1.answers[0])", for: .normal)
        secondButton.setTitle("\(question1.answers[1])", for: .normal)
        thirdButton.setTitle("\(question1.answers[2])", for: .normal)
        fourthButton.setTitle("\(question1.answers[3])", for: .normal)
    }
    
    @IBAction func checkAction(_ sender: UIBarButtonItem) {
        if question == 1 {
            questionLabel.text = "\(question1.count)."
            questionTextView.text = "\(question1.question)"
            
            firstButton.setTitle("\(question1.answers[0])", for: .normal)
            secondButton.setTitle("\(question1.answers[1])", for: .normal)
            thirdButton.setTitle("\(question1.answers[2])", for: .normal)
            fourthButton.setTitle("\(question1.answers[3])", for: .normal)
            
            trueButton = secondButton
            trueOpen = secondOpen
            
            if secondOpen == true {
                trueAnswer += 1
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 2 {
            questionLabel.text = "\(question2.count)."
            questionTextView.text = "\(question2.question)"
            
            firstButton.setTitle("\(question2.answers[0])", for: .normal)
            secondButton.setTitle("\(question2.answers[1])", for: .normal)
            thirdButton.setTitle("\(question2.answers[2])", for: .normal)
            fourthButton.setTitle("\(question2.answers[3])", for: .normal)
            
            trueButton = thirdButton
            trueOpen = thirdOpen
            
            if thirdOpen == true {
                trueAnswer += 1
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 3 {
            questionLabel.text = "\(question3.count)."
            questionTextView.text = "\(question3.question)"
            
            firstButton.setTitle("\(question3.answers[0])", for: .normal)
            secondButton.setTitle("\(question3.answers[1])", for: .normal)
            thirdButton.setTitle("\(question3.answers[2])", for: .normal)
            fourthButton.setTitle("\(question3.answers[3])", for: .normal)
            
            trueButton = firstButton
            trueOpen = firstOpen
            
            if firstOpen == true {
                trueAnswer += 1
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 4 {
            questionLabel.text = "\(question4.count)."
            questionTextView.text = "\(question4.question)"
            
            firstButton.setTitle("\(question4.answers[0])", for: .normal)
            secondButton.setTitle("\(question4.answers[1])", for: .normal)
            thirdButton.setTitle("\(question4.answers[2])", for: .normal)
            fourthButton.setTitle("\(question4.answers[3])", for: .normal)
            
            trueButton = firstButton
            trueOpen = firstOpen
            
            if firstOpen == true {
                trueAnswer += 1
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 5 {
            questionLabel.text = "\(question5.count)."
            questionTextView.text = "\(question5.question)"
            
            firstButton.setTitle("\(question5.answers[0])", for: .normal)
            secondButton.setTitle("\(question5.answers[1])", for: .normal)
            thirdButton.setTitle("\(question5.answers[2])", for: .normal)
            fourthButton.setTitle("\(question5.answers[3])", for: .normal)
            
            trueButton = firstButton
            trueOpen = firstOpen
            
            if firstOpen == true {
                trueAnswer += 1
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 6 {
            questionLabel.text = "\(question6.count)."
            questionTextView.text = "\(question6.question)"
            
            firstButton.setTitle("\(question6.answers[0])", for: .normal)
            secondButton.setTitle("\(question6.answers[1])", for: .normal)
            thirdButton.setTitle("\(question6.answers[2])", for: .normal)
            fourthButton.setTitle("\(question6.answers[3])", for: .normal)
            
            trueButton = fourthButton
            trueOpen = fourthOpen
            
            if fourthOpen == true {
                trueAnswer += 1
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 7 {
            questionLabel.text = "\(question7.count)."
            questionTextView.text = "\(question7.question)"
            
            firstButton.setTitle("\(question7.answers[0])", for: .normal)
            secondButton.setTitle("\(question7.answers[1])", for: .normal)
            thirdButton.setTitle("\(question7.answers[2])", for: .normal)
            fourthButton.setTitle("\(question7.answers[3])", for: .normal)
            
            trueButton = fourthButton
            trueOpen = fourthOpen
            
            if fourthOpen == true {
                trueAnswer += 1
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 8 {
            questionLabel.text = "\(question8.count)."
            questionTextView.text = "\(question8.question)"
            
            firstButton.setTitle("\(question8.answers[0])", for: .normal)
            secondButton.setTitle("\(question8.answers[1])", for: .normal)
            thirdButton.setTitle("\(question8.answers[2])", for: .normal)
            fourthButton.setTitle("\(question8.answers[3])", for: .normal)
            
            trueButton = secondButton
            trueOpen = secondOpen
            
            if secondOpen == true {
                trueAnswer += 1
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 9 {
            questionLabel.text = "\(question9.count)."
            questionTextView.text = "\(question9.question)"
            
            firstButton.setTitle("\(question9.answers[0])", for: .normal)
            secondButton.setTitle("\(question9.answers[1])", for: .normal)
            thirdButton.setTitle("\(question9.answers[2])", for: .normal)
            fourthButton.setTitle("\(question9.answers[3])", for: .normal)
            
            trueButton = secondButton
            trueOpen = secondOpen
            
            if secondOpen == true {
                trueAnswer += 1
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
            } else {
                let alert = UIAlertController(title: "Alert", message: "You must choose a option!", preferredStyle: UIAlertController.Style.alert)
                let okButoon = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okButoon)
                self.present(alert, animated: true, completion: nil)
            }
        } else if question == 10 {
            questionLabel.text = "\(question10.count)."
            questionTextView.text = "\(question10.question)"
            
            firstButton.setTitle("\(question10.answers[0])", for: .normal)
            secondButton.setTitle("\(question10.answers[1])", for: .normal)
            thirdButton.setTitle("\(question10.answers[2])", for: .normal)
            fourthButton.setTitle("\(question10.answers[3])", for: .normal)
            
            trueButton = thirdButton
            trueOpen = thirdOpen
            
            if thirdOpen == true {
                trueButton.backgroundColor = #colorLiteral(red: 0, green: 0.7703045685, blue: 0.1570926095, alpha: 1)
                nextBarButtonItem.isEnabled = true
                trueAnswer += 1
                performSegue(withIdentifier: "toResultVC", sender: nil)
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
    }
}
