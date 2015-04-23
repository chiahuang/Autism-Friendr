//
//  ViewController.swift
//  Friendr
//
//  Copyright (c) 2015 TeamStringName. All rights reserved.
//

import UIKit
import MediaPlayer

let answer = "nothing"

class ViewController: UIViewController {

    var moviePlayer : MPMoviePlayerController?
    var friendPressed:String!;

    
    func playVideo() {
        println(selectVideo(friendPressed))
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
            println("MadBrian")
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
            println("Start remove sibview")
            if let viewWithTag = self.view.viewWithTag(100) {
                viewWithTag.removeFromSuperview()
            }else{
                println("No!")
            }
    }
    
    func moviePlayBackDidFinish(notification : NSNotification) {
        if let player = moviePlayer {
                player.view.removeFromSuperview()
        }
    }
    
    @IBOutlet weak var happy: UIButton!
    @IBOutlet weak var sad: UIButton!
    @IBOutlet weak var scared: UIButton!
    @IBOutlet weak var worried: UIButton!
    @IBOutlet weak var mad: UIButton!
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) {
        if (segue.identifier == "happy") {
            let answer = "happy"
            var svc = segue!.destinationViewController as! ViewController2;
            
            //svc.toPass = textField.text
            
        }
        else if(segue.identifier == "sad") {
            let answer = "sad"
            var svc = segue!.destinationViewController as!
            ViewController2;
            //svc.toPass = textField.text
        }
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

