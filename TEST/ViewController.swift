//
//  ViewController.swift
//  Friendr
//
//  Copyright (c) 2015 TeamStringName. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

    var moviePlayer : MPMoviePlayerController?
    var friendPressed:String!;
    var emotion:String!;

    
    func playVideo() {
        //println(selectVideo(friendPressed))
        var video: String! = selectVideo(friendPressed)
        let path = NSBundle.mainBundle().pathForResource(video, ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = moviePlayer {
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.view.sizeToFit()
            self.view.addSubview(player.view)
        }
    }
    
    func selectVideo(friend : String!) -> String! {
        if(friend == "Sarah"){
            return "HappySarah"
        }
        else if(friend == "Brian"){
            //println("MadBrian")
            return "MadBrian"
        }
        else if(friend == "David") {
            return "ScaredDavid"
        }
        else if(friend == "Jenny") {
            return "SadJenny"
        }
        else {
            return "";
        }
    }
    
    
    func removeSubview(){
            //println("Start remove sibview")
            if let viewWithTag = self.view.viewWithTag(100) {
                viewWithTag.removeFromSuperview()
            }else{
                //println("No!")
            }
    }
    
    func moviePlayBackDidFinish(notification : NSNotification) {
        if let player = moviePlayer {
                player.view.removeFromSuperview()
        }
    }
    
    
    @IBAction func madPressed(sender: AnyObject) {
        emotion = "mad"
    }
    @IBAction func happyPressed(sender: AnyObject) {
        emotion = "happy"
    }
    @IBAction func sadPressed(sender: AnyObject) {
        emotion = "sad"
    }
    @IBAction func scaredPressed(sender: AnyObject) {
        emotion = "scared"
    }
    @IBAction func worriedPressed(sender: AnyObject) {
        emotion = "worried"
        
    }

    
    
    
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) {
        var svc = segue!.destinationViewController as AnswerScreen;
            svc.emotion = emotion
            svc.friendPressed = friendPressed
        
    }
    //@IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "moviePlayBackDidFinish:", name: MPMoviePlayerPlaybackDidFinishNotification, object: moviePlayer
        )
        
        // Do any additional setup after loading the view, typically from a nib.
        playVideo()
        removeSubview()

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

