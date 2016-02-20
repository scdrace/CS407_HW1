//
//  P3ViewController.swift
//  HW1_QuizApp
//
//  Created by David Race on 2/19/16.
//  Copyright © 2016 cs407. All rights reserved.
//

import UIKit

class P3ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var labelTop: UILabel!

    var questionCount = 0.0
    var correctCount = 0.0
    var percentCorrect = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        percentCorrect = (correctCount/questionCount) * 100
        
        // Do any additional setup after loading the view, typically from a nib.
        labelTop.text = "Percent Correct: \(percentCorrect)"
        //labelBottom.text = "Question Two: Incorrect"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextController = segue.destinationViewController as! P2ViewController
        nextController.correctCount = correctCount
        
    }
    */
}