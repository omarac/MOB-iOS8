//
//  Exercise4ViewController.swift
//  ViewExercises
//
//  Created by William Martin on 1/22/16.
//  Copyright © 2016 Anomalus. All rights reserved.
//

import UIKit

class Exercise4ViewController: UIViewController {
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func buttonClick(sender: AnyObject) {
        if myButton.backgroundColor == UIColor.greenColor() {
            myButton.backgroundColor = UIColor.redColor()
        }else{
           myButton.backgroundColor = UIColor.greenColor()
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

        myButton.layer.borderWidth = 0.5
        myButton.layer.borderColor = UIColor.redColor().CGColor
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
