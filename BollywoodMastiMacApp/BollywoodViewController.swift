//
//  BollywoodViewController.swift
//  BollywoodMastiMacApp
//
//  Created by Rahul Tomar on 06/01/16.
//  Copyright © 2016 Rahul Tomar. All rights reserved.
//

import Cocoa

class BollywoodViewController: NSViewController {

    
    @IBOutlet weak var gifImage: NSImageView!
    @IBOutlet weak var gifImgHungama: NSImageView!
    @IBOutlet weak var volumeController: NSSlider!
    @IBOutlet weak var gifImageRadioCity: NSImageView!
    @IBOutlet weak var gifImgRadioHsl: NSImageView!
    @IBOutlet weak var gifImgBrnb: NSImageView!
    @IBOutlet weak var gifImgDjGaurav: NSImageView!
    @IBOutlet weak var gifImgM4Uradio: NSImageView!
    @IBOutlet var helpMenu: NSMenu!
    
    var city1016Selected: Bool = false
    var hungamaSelected: Bool = false
    var planetRadioCitySelected: Bool = false
    var radioHslSelected: Bool = false
    var brnbSelected: Bool = false
    var djGauravSelected: Bool = false
    var m4uRadioSelected: Bool = false
    var radioUrl: String = ""
    var rPlayer: RadioPlayer = RadioPlayer(radioUrl: "http://playerservices.streamtheworld.com/pls/ARNCITYAAC.pls")
    var oneRadioSelected: Bool = false
    var radioStopped: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        volumeController.continuous = true
        volumeController.floatValue = 20.0
    }
    
    @IBAction func playCurrentSelected(sender: NSButton) {
        if(oneRadioSelected && radioStopped){
            radioStopped = false
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
        }
        
    }
    
    @IBAction func stopCurrentSelected(sender: NSButton) {
        rPlayer.pause()
        radioStopped = true
    }
    
    @IBAction func controlVolume(sender: NSSlider) {
        rPlayer.controlVolume(volumeController)
    }
    
    @IBAction func selectCity1016(sender: NSButton) {
        if(!city1016Selected){
            city1016Selected = true
            oneRadioSelected = true
            hungamaSelected = false
            planetRadioCitySelected = false
            radioHslSelected = false
            brnbSelected = false
            gifImgBrnb.image = NSImage()
            radioUrl = "http://playerservices.streamtheworld.com/pls/ARNCITYAAC.pls"
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
            gifImage.image = NSImage(named: "musicbars.gif")
            gifImgHungama.image = NSImage()
            gifImgRadioHsl.image = NSImage()
            gifImageRadioCity.image = NSImage()
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
        
    }
    
    @IBAction func selectHungama(sender: NSButton) {
        if(!hungamaSelected){
            hungamaSelected = true
            oneRadioSelected = true
            city1016Selected = false
            planetRadioCitySelected = false
            radioHslSelected = false
            radioUrl = "http://123.176.41.8:8056/listen.pls"
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
            gifImgHungama.image = NSImage(named: "musicbars.gif")
            gifImage.image = NSImage()
            gifImgRadioHsl.image = NSImage()
            brnbSelected = false
            gifImgBrnb.image = NSImage()
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
    }
    
    @IBAction func selectPlanetRadioCity(sender: NSButton) {
        if(!planetRadioCitySelected){
            hungamaSelected = false
            oneRadioSelected = true
            city1016Selected = false
            planetRadioCitySelected = true
            radioHslSelected = false
            radioUrl = "http://216.245.201.73:9960/listen.pls"
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
            gifImgHungama.image = NSImage()
            gifImage.image = NSImage()
            gifImageRadioCity.image = NSImage(named: "musicbars.gif")
            gifImgRadioHsl.image = NSImage()
            brnbSelected = false
            gifImgBrnb.image = NSImage()
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
    }
    
    @IBAction func selectradioHsl(sender: NSButton) {
        if(!radioHslSelected){
            hungamaSelected = false
            oneRadioSelected = true
            city1016Selected = false
            planetRadioCitySelected = false
            radioHslSelected = true
            radioUrl = "http://50.7.70.66:8485/listen.pls"
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
            gifImgHungama.image = NSImage()
            gifImage.image = NSImage()
            gifImageRadioCity.image = NSImage()
            gifImgRadioHsl.image = NSImage(named: "musicbars.gif")
            brnbSelected = false
            gifImgBrnb.image = NSImage()
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
    }
    
    @IBAction func selectBrnb(sender: NSButton) {
        if(!brnbSelected){
            hungamaSelected = false
            oneRadioSelected = true
            city1016Selected = false
            planetRadioCitySelected = false
            radioHslSelected = false
            radioUrl = "http://96.31.83.86:8084/listen.pls"
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
            gifImgHungama.image = NSImage()
            gifImage.image = NSImage()
            gifImageRadioCity.image = NSImage()
            gifImgRadioHsl.image = NSImage()
            brnbSelected = true
            gifImgBrnb.image = NSImage(named: "musicbars.gif")
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
    }
    
    @IBAction func selectDjyGaurav(sender: NSButton) {
        if(!djGauravSelected){
            hungamaSelected = false
            oneRadioSelected = true
            city1016Selected = false
            planetRadioCitySelected = false
            radioHslSelected = false
            radioUrl = "http://199.195.194.140:8035/listen.pls"
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
            gifImgHungama.image = NSImage()
            gifImage.image = NSImage()
            gifImageRadioCity.image = NSImage()
            gifImgRadioHsl.image = NSImage()
            brnbSelected = false
            gifImgBrnb.image = NSImage()
            djGauravSelected = true
            gifImgDjGaurav.image = NSImage(named: "musicbars.gif")
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
    }
    
    @IBAction func selectM4uRadio(sender: NSButton) {
        if(!m4uRadioSelected){
            hungamaSelected = false
            oneRadioSelected = true
            city1016Selected = false
            planetRadioCitySelected = false
            radioHslSelected = false
            radioUrl = "http://72.44.89.82:8000/listen.pls"
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
            gifImgHungama.image = NSImage()
            gifImage.image = NSImage()
            gifImageRadioCity.image = NSImage()
            gifImgRadioHsl.image = NSImage()
            brnbSelected = false
            gifImgBrnb.image = NSImage()
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage(named: "musicbars.gif")
        }

    }
    
    @IBAction func quitApplication(sender: NSButton) {
        NSApplication.sharedApplication().terminate(sender)
    }
    
    @IBAction func openHelp(sender: NSButton) {
        helpMenu.popUpMenuPositioningItem(helpMenu.itemAtIndex(0), atLocation: NSEvent.mouseLocation(), inView: nil)
    }
    
    @IBAction func launchAtStartup(sender: NSMenuItem) {
        sender.state = 1
    }
    
    

}
