//
//  FillInQuestionViewController.swift
//  Noumenon_UIKit
//
//  Created by Bryan Ma on 3/9/15.
//  Copyright (c) 2015 Bryan Ma. All rights reserved.
//

import UIKit

class FillInQuestionViewController: UIViewController, UITextFieldDelegate {
    
    var enteredVerb : String?
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        enteredVerb = textField.text
        println(enteredVerb!)
        
        if (enteredVerb == "") {
            nextButton.enabled = false
            nextButton.hidden = true
        } else {
            nextButton.enabled = true
            nextButton.hidden = false
        }
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //nextButton.enabled = true
        enteredVerb = textField.text
        println(enteredVerb!)
        if (enteredVerb != "") {
            nextButton.enabled = true
            nextButton.hidden = false
        }
        
        textField.resignFirstResponder()
        //self.view.endEditing(true)

        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        nextButton.enabled = false
        nextButton.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        var quantifyScene = segue.destinationViewController as QuantifyViewController
        // Pass the selected object to the new view controller.
        quantifyScene.enteredVerb = enteredVerb
    }
    

}
