//
//  P2ViewController.swift
//  HW1_QuizApp
//
//  Created by David Race on 2/19/16.
//  Copyright © 2016 cs407. All rights reserved.
//

import UIKit

class P2ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var answer: UITextField!
    
    var item = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(item)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        //print("Hello")
        return true;
    }
}