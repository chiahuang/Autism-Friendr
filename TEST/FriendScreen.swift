//
//  FriendScreen.swift
//  TEST
//
//  Created by Kay Lab on 4/22/15.
//  Copyright (c) 2015 Kevin Chen. All rights reserved.
//

import Foundation
import UIKit

class FriendScreen: UIViewController {
    
    var friendPicked = ""
  
    
    @IBAction func sarahPressed(sender: AnyObject) {
        friendPicked = "Sarah"
        //println(friendPicked)
    }
    
    @IBAction func brianPicked(sender: AnyObject) {
        friendPicked = "Brian"
        //println(friendPicked)
    }
    
    @IBAction func davidPicked(sender: AnyObject) {
        friendPicked = "David"
        //println(friendPicked)
    }
    
    @IBAction func jennyPicked(sender: AnyObject) {
        friendPicked = "Jenny"
        //println(friendPicked)
    }
    
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) {
            let answer = "happy"
            var svc = segue!.destinationViewController as! ViewController;
        svc.friendPressed = friendPicked;
    }

    
    
}