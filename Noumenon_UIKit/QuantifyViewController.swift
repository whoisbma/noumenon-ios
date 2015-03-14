//
//  QuantifyViewController.swift
//  Noumenon_UIKit
//
//  Created by Bryan Ma on 3/9/15.
//  Copyright (c) 2015 Bryan Ma. All rights reserved.
//

import UIKit

class QuantifyViewController: UIViewController {

    var enteredVerb : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (enteredVerb != nil) {
            println("carried over verb is: " + enteredVerb!)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        
        if let segueID = segue.identifier {
            switch segueID {
                case "what":
                    var questionWordScene = segue.destinationViewController as WhatViewController
                    questionWordScene.enteredVerb = enteredVerb
                case "who":
                    var questionWordScene = segue.destinationViewController as WhoViewController
                    questionWordScene.enteredVerb = enteredVerb
                case "when":
                    var questionWordScene = segue.destinationViewController as WhenViewController
                    questionWordScene.enteredVerb = enteredVerb
                case "why":
                    var questionWordScene = segue.destinationViewController as WhyViewController
                    questionWordScene.enteredVerb = enteredVerb
                case "where":
                    var questionWordScene = segue.destinationViewController as WhereViewController
                    questionWordScene.enteredVerb = enteredVerb
                case "howMuch":
                    var questionWordScene = segue.destinationViewController as HowMuchViewController
                    questionWordScene.enteredVerb = enteredVerb
                case "howMany":
                    var questionWordScene = segue.destinationViewController as HowManyViewController
                    questionWordScene.enteredVerb = enteredVerb
                default: //EJECT!  // NO I CAN HOLD IT // PULL UP PORKINS!!
                    break
        }
        // Pass the selected object to the new view controller.
        
        }
    }
    
}
