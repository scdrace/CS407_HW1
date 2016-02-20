//
//  ViewController.swift
//  HW1_QuizApp
//
//  Created by David Race on 2/18/16.
//  Copyright © 2016 cs407. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var Answer: UITextField!
    let correctAnswer = ["3", "three"]
    var userAnswer = ""
    var questionCount = 0.0
    var correctCount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //
    }

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if let text = textField.text {
            if correctAnswer.contains(text.lowercaseString) {
                answerLabel.text = "Correct!"
                answerLabel.hidden = false
                
                correctCount += 1
            }
            else {
                answerLabel.text = "Incorrect: Answer is 3"
                answerLabel.hidden = false
            }
        }
        
        self.view.endEditing(true)
        return true;
    }
    
    @IBAction func SubmitAnswer(sender: AnyObject) {

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextController = segue.destinationViewController as! P2ViewController
        nextController.correctCount = correctCount
        nextController.questionCount = questionCount + 1
        answerLabel.hidden = true
        Answer.text = ""
    }

    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        
    }
}

