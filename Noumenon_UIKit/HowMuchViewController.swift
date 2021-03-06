//
//  HowMuchViewController.swift
//  Noumenon_UIKit
//
//  Created by Bryan Ma on 3/13/15.
//  Copyright (c) 2015 Bryan Ma. All rights reserved.
//

import UIKit

class HowMuchViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var measureTextField: UITextField!
    @IBOutlet weak var questionLabel: UILabel!
    
    var value : String?
    var measurement : String?
    var enteredHowMuch : String?
    
    var enteredVerb : String?
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField == valueTextField) {
            value = textField.text
            println(value)
        } else {
            measurement = textField.text
            println(measurement)
        }
        if ( measurement != nil && value != nil ) {
            if ( value != "" && measurement != "") {
                enteredHowMuch = value! + " " + measurement!
                println(enteredHowMuch)
                okButton.enabled = true
                okButton.hidden = false
            }
        }
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        value = valueTextField.text
        println(value)
        measurement = measureTextField.text
        println(measurement)
        
        okButton.enabled = false
        okButton.hidden = true
        
        if ( measurement != nil && value != nil ) {
            if ( value != "" && measurement != "") {
                enteredHowMuch = value! + " " + measurement!
                println(enteredHowMuch)
                okButton.enabled = true
                okButton.hidden = false
            }
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
