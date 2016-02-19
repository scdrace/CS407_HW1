//
//  ViewController.swift
//  HW1_QuizApp
//
//  Created by David Race on 2/18/16.
//  Copyright © 2016 cs407. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Answer: UITextField!
    let question = "What city does this team represent?"
    let correctAnswer = "2"
    var userAnswer = "2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dismissKeyboard(sender: AnyObject) {
        //Answer.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //textField.text
        if let text = textField.text {
            print(text)
        }
        self.view.endEditing(true)
        return true;
    }
    
    @IBAction func SubmitAnswer(sender: AnyObject) {
        if userAnswer == "2" {
            print("hello2")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextController = segue.destinationViewController as! P2ViewController
        nextController.item = 2
        
    }

}

