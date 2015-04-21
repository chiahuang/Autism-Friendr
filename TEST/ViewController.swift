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
    
    func playVideo() {
        let path = NSBundle.mainBundle().pathForResource("HappySarah", ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = moviePlayer {
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
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
            var svc = segue!.destinationViewController as ViewController2;
            
            //svc.toPass = textField.text
            
        }
        else if(segue.identifier == "sad") {
            var svc = segue!.destinationViewController as
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

