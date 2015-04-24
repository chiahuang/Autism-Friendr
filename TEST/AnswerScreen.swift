//
//  AnswerScreen.swift
//  TEST
//
//  Created by Kay Lab on 4/23/15.
//  Copyright (c) 2015 Kevin Chen. All rights reserved.
//

import UIKit
import Foundation

class AnswerScreen: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var textView: UITextView!
    var emotion : String!
    var friendPressed : String!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Emotion: " + emotion)
        if(friendPressed == "Sarah") {
            if(emotion == "happy"){
                labelText.text = "Correct"
                labelText.font = UIFont.systemFontOfSize(50)
                labelText.sizeToFit()
            }
            else {
                labelText.text = "Incorrect"
                labelText.font = UIFont.systemFontOfSize(50)
                labelText.sizeToFit()
            }
            textView.text = "Sarah is HAPPY because although she was nervous to sing in front of the audience, she made no mistakes and ended up winning the talent show! She is happy that all her hard work paid off and is seen smiling at the end."
        }
        else if(friendPressed == "Brian") {
            if(emotion == "mad"){
                labelText.text = "Correct"
                labelText.font = UIFont.systemFontOfSize(50)
                labelText.sizeToFit()
            }
            else{
                labelText.text = "Incorrect"
                labelText.font = UIFont.systemFontOfSize(50)
                labelText.sizeToFit()
            }
            textView.text = "Brian is MAD because he missed the basketball shot. He practiced for many weeks and during this important moment, he was not able to score a goal. He is seen frowning and upset at the end, which generally indicates that someone is mad."
        }
        else if(friendPressed == "Jenny"){
            if(emotion == "sad") {
                labelText.text = "Correct"
                labelText.font = UIFont.systemFontOfSize(50)
                labelText.sizeToFit()
            }
            else {
                labelText.text = "Incorrect"
                labelText.font = UIFont.systemFontOfSize(50)
                labelText.sizeToFit()
            }
            textView.text = "Jenny is SAD because she wanted to go to the park to ride on the swings. However, when she got there, the swings were already taken by other children. She is seen frowning, which shows that she is sad."
            
        }
        else if(friendPressed == "David") {
            if(emotion == "scared"){
                labelText.text = "Correct"
                labelText.font = UIFont.systemFontOfSize(50)
                labelText.sizeToFit()
            }
            else {
                labelText.text = "Incorrect"
                labelText.font = UIFont.systemFontOfSize(50)
                labelText.sizeToFit()
            }
            textView.text = "David is SCARED because he does not like needles. When he sees that he is going to get a shot, he is nervous and scared."
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}