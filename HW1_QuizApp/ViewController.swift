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
        self.view.endEditing(true)
        print("Hello")
        return true;
    }
    @IBAction func SubmitAnswer(sender: AnyObject) {
        
    }

}

