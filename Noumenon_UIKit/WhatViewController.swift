//
//  WhatViewController.swift
//  Noumenon_UIKit
//
//  Created by Bryan Ma on 3/13/15.
//  Copyright (c) 2015 Bryan Ma. All rights reserved.
//

import UIKit

class WhatViewController: UIViewController, UITextFieldDelegate {

    var enteredWhat : String?
    
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        enteredWhat = textField.text
        println(enteredWhat!)
        if (enteredWhat != "") {
            okButton.enabled = true
            okButton.hidden = false
        }
        
        textField.resignFirstResponder()
        //self.view.endEditing(true)
        
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        enteredWhat = textField.text
        println(enteredWhat!)
        
        if (enteredWhat == "") {
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