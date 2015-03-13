//
//  HowManyViewController.swift
//  Noumenon_UIKit
//
//  Created by Bryan Ma on 3/13/15.
//  Copyright (c) 2015 Bryan Ma. All rights reserved.
//

import UIKit

class HowManyViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var okButton: UIButton!
    
    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var measureTextField: UITextField!
    
    var value : String?
    var measurement : String?
    var enteredHowMany : String?
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField == valueTextField) {
            value = textField.text
            println(value)
        } else {
            measurement = textField.text
            println(measurement)
        }
        if (measurement != nil && value != nil) {
            if (value != "" && measurement != "") {
                enteredHowMany = value! + " " + measurement!
                println(enteredHowMany)
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
                enteredHowMany = value! + " " + measurement!
                println(enteredHowMany)
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
