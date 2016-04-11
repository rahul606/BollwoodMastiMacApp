//
//  RadioPlayer.swift
//  BollywoodMastiMacApp
//
//  Created by Rahul Tomar on 06/01/16.
//  Copyright © 2016 Rahul Tomar. All rights reserved.
//

import Foundation
import AVFoundation

class RadioPlayer {
    
    private var player: AVPlayer = AVPlayer()
    private var isPlaying = false
    private var radioUrl: String
    
    init(radioUrl: String){
        self.radioUrl = radioUrl
        self.player = AVPlayer(URL: NSURL(string: radioUrl)!)
    }
    
    func play() {
        player.play()
        isPlaying = true
    }
    
    func pause() {
        player.pause()
        isPlaying = false
    }
    
    func toggle() {
        if isPlaying == true {
            pause()
        } else {
            play()
        }
    }
    
    func currentlyPlaying() -> Bool {
        return isPlaying
    }
    
    func controlVolume(slider: NSSlider){
        player.volume = slider.floatValue
    }
}
