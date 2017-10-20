//
//  AppDelegate.swift
//  BollywoodMastiMacApp
//
//  Created by Rahul Tomar on 05/01/16.
//  Copyright © 2016 Rahul Tomar. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let popover = NSPopover()
    
    var eventMonitor: EventMonitor?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        if let button = statusItem.button {
            button.image = NSImage(named: NSImage.Name(rawValue: "Yinyue-Liu-Logo-Menu"))
            button.action = #selector(AppDelegate.openRadioWindow(_:))
        }
        
        popover.contentViewController = BollywoodViewController(nibName: NSNib.Name(rawValue: "BollywoodViewController"), bundle: nil)
        
        eventMonitor = EventMonitor(mask: [.leftMouseDown, .rightMouseDown]) { [weak self] event in
            if let strongSelf = self, strongSelf.popover.isShown {
                strongSelf.closePopover(event)
            }
        }
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func openRadioWindow(_ sender: AnyObject) {
        if popover.isShown {
            closePopover(sender)
        } else {
            showPopover(sender)
        }
    }
    
    func showPopover(_ sender: AnyObject?) {
        if let button = statusItem.button {
            eventMonitor?.start()
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
        }
    }
    
    func closePopover(_ sender: AnyObject?) {
        eventMonitor?.stop()
        popover.performClose(sender)
    }


}

