//
//  ViewController.swift
//  DemoVoice
//
//  Created by Dambert Munoz on 16/08/21.
//

import UIKit
import AgoraRtcKit

class ViewController: UIViewController {
    
   var agoraKit: AgoraRtcEngineKit?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initializeAgoraEngine()
        joinChannel()
    }
    
    func initializeAgoraEngine() {
           // Initializes AgoraRtcEngineKit
        self.agoraKit = AgoraRtcEngineKit.sharedEngine(withAppId: "0d4a10caf01e49c99540370f83eb3f97", delegate: self)
    }
    func joinChannel() {
            // The uid of each user in the channel must be unique.
            agoraKit?.joinChannel(byToken: "0060d4a10caf01e49c99540370f83eb3f97IAAWZ1IsEMAbzKTLQm1mTJ4v9msju6FPxeZZOc5ZzlMlVaQ6H5kAAAAAEAD48pp7KuEbYQEAAQAq4Rth", channelId: "YourChannelName", info: nil, uid: 0, joinSuccess: { (channel, uid, elapsed) in
                
                print("printing values success")
                print(channel)
                print(uid)
                print(elapsed)
        })
    }

}

extension ViewController: AgoraRtcEngineDelegate{
    
}

