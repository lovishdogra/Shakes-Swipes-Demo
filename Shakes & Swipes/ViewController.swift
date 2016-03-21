//
//  ViewController.swift
//  Shakes & Swipes
//
//  Created by Lovish Dogra on 21/03/16.
//  Copyright © 2016 Lovish Dogra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var actionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event?.subtype == UIEventSubtype.MotionShake{
            actionLabel.text = "Device Shaked"
        }
    }
    
    func swiped(gesture : UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            switch swipeGesture.direction{
            case UISwipeGestureRecognizerDirection.Right:
                actionLabel.text = "Swiped Right"
            case UISwipeGestureRecognizerDirection.Up:
                actionLabel.text = "Swiped Up"
            default:
                print("Not able to recognize gesture")
            }
        }
    }


}

