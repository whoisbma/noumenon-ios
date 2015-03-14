//
//  WhenViewController.swift
//  Noumenon_UIKit
//
//  Created by Bryan Ma on 3/13/15.
//  Copyright (c) 2015 Bryan Ma. All rights reserved.
//

import UIKit

class WhenViewController: UIViewController {

    var enteredVerb : String?
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
