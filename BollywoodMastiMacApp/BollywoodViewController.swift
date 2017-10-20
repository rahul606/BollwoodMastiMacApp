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
        
        volumeController.isContinuous = true
        volumeController.floatValue = 20.0
    }
    
    @IBAction func playCurrentSelected(_ sender: NSButton) {
        if(oneRadioSelected && radioStopped){
            radioStopped = false
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
        }
        
    }
    
    @IBAction func stopCurrentSelected(_ sender: NSButton) {
        rPlayer.pause()
        radioStopped = true
    }
    
    @IBAction func controlVolume(_ sender: NSSlider) {
        rPlayer.controlVolume(volumeController)
    }
    
    @IBAction func selectCity1016(_ sender: NSButton) {
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
            gifImage.image = NSImage(named: NSImage.Name(rawValue: "musicbars.gif"))
            gifImgHungama.image = NSImage()
            gifImgRadioHsl.image = NSImage()
            gifImageRadioCity.image = NSImage()
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
        
    }
    
    @IBAction func selectHungama(_ sender: NSButton) {
        if(!hungamaSelected){
            hungamaSelected = true
            oneRadioSelected = true
            city1016Selected = false
            planetRadioCitySelected = false
            radioHslSelected = false
            radioUrl = "http://123.176.41.8:8056/listen.pls"
            rPlayer = RadioPlayer(radioUrl: radioUrl)
            rPlayer.play()
            gifImgHungama.image = NSImage(named: NSImage.Name(rawValue: "musicbars.gif"))
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
    
    @IBAction func selectPlanetRadioCity(_ sender: NSButton) {
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
            gifImageRadioCity.image = NSImage(named: NSImage.Name(rawValue: "musicbars.gif"))
            gifImgRadioHsl.image = NSImage()
            brnbSelected = false
            gifImgBrnb.image = NSImage()
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
    }
    
    @IBAction func selectradioHsl(_ sender: NSButton) {
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
            gifImgRadioHsl.image = NSImage(named: NSImage.Name(rawValue: "musicbars.gif"))
            brnbSelected = false
            gifImgBrnb.image = NSImage()
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
    }
    
    @IBAction func selectBrnb(_ sender: NSButton) {
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
            gifImgBrnb.image = NSImage(named: NSImage.Name(rawValue: "musicbars.gif"))
            djGauravSelected = false
            gifImgDjGaurav.image = NSImage()
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
    }
    
    @IBAction func selectDjyGaurav(_ sender: NSButton) {
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
            gifImgDjGaurav.image = NSImage(named: NSImage.Name(rawValue: "musicbars.gif"))
            m4uRadioSelected = false
            gifImgM4Uradio.image = NSImage()
        }
    }
    
    @IBAction func selectM4uRadio(_ sender: NSButton) {
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
            gifImgM4Uradio.image = NSImage(named: NSImage.Name(rawValue: "musicbars.gif"))
        }

    }
    
    @IBAction func quitApplication(_ sender: NSButton) {
        NSApplication.shared.terminate(sender)
    }
    
    @IBAction func openHelp(_ sender: NSButton) {
        helpMenu.popUp(positioning: helpMenu.item(at: 0), at: NSEvent.mouseLocation, in: nil)
    }
    
    @IBAction func launchAtStartup(_ sender: NSMenuItem) {
        sender.state = NSControl.StateValue(rawValue: 1)
    }

}
