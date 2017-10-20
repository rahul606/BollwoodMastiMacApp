//
//  RadioPlayer.swift
//  BollywoodMastiMacApp
//
//  Created by Rahul Tomar on 06/01/16.
//  Copyright © 2016 Rahul Tomar. All rights reserved.
//

import Foundation
import AVFoundation
import AppKit

class RadioPlayer {
    
    fileprivate var player: AVPlayer = AVPlayer()
    fileprivate var isPlaying = false
    fileprivate var radioUrl: String
    
    init(radioUrl: String){
        self.radioUrl = radioUrl
        self.player = AVPlayer(url: URL(string: radioUrl)!)
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
    
    func controlVolume(_ slider: NSSlider){
        player.volume = slider.floatValue
    }
}
