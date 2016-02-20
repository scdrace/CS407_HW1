//
//  P2ViewController.swift
//  HW1_QuizApp
//
//  Created by David Race on 2/19/16.
//  Copyright © 2016 cs407. All rights reserved.
//

import UIKit

class P2ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var Answer: UITextField!
    let correctAnswer = ["dane", "dane county"]
    var userAnswer = ""
    var questionCount = 0.0
    var correctCount = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if let text = textField.text {
            if correctAnswer.contains(text.lowercaseString) {
                answerLabel.text = "Correct!"
                answerLabel.hidden = false
                
                correctCount += 1
            }
            else {
                answerLabel.text = "Incorrect: Answer is Dane County"
                answerLabel.hidden = false
            }
        }
        
        self.view.endEditing(true)
        return true;
    }
    
    @IBAction func SubmitAnswer(sender: AnyObject) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextController = segue.destinationViewController as! P3ViewController
        nextController.correctCount = correctCount
        nextController.questionCount = questionCount + 1
        answerLabel.hidden = true
        Answer.text = ""
    }

}