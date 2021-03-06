//
//  WhoViewController.swift
//  Noumenon_UIKit
//
//  Created by Bryan Ma on 3/13/15.
//  Copyright (c) 2015 Bryan Ma. All rights reserved.
//

import UIKit

class WhoViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var questionLabel: UILabel!
    var enteredWho : String?
    var enteredVerb : String?
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        enteredWho = textField.text
        println(enteredWho!)
        if (enteredWho != "") {
            okButton.enabled = true
            okButton.hidden = false
        }
        
        textField.resignFirstResponder()
        //self.view.endEditing(true)
        
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        enteredWho = textField.text
        println(enteredWho!)
        
        if (enteredWho == "") {
            okButton.enabled = false
            okButton.hidden = true
        } else {
            okButton.enabled = true
            okButton.hidden = false
        }
        
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        okButton.enabled = false
        okButton.hidden = true
        if (enteredVerb != nil) {
            println("carried over verb is: " + enteredVerb!)
            questionLabel.text = questionLabel.text! + enteredVerb! + "?"
        }
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
