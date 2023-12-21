//
//  AppDelegate.swift
//  Test
//
//  Created by ilho.ahn on 2023/07/18.
//

import Cocoa
import Carbon

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
            
            NSApplication.shared.hide(self)
            
            NotificationCenter.default.addObserver(
                  forName: WorkspaceData.currentInputSourceChanged,
                  object: nil,
                  queue: .main
                ) { [weak self] _ in
                  guard let self = self else { return }
                    
                    let keyboard = TISCopyCurrentKeyboardInputSource().takeRetainedValue()
                    let keyboardString = String(describing: keyboard)
                    
                    if keyboardString.contains("Korean"){
                        print("KO")
                        NSApplication.shared.applicationIconImage = NSImage(named: "KO")
                    }
                    else{
                        print("EN")
                        NSApplication.shared.applicationIconImage = NSImage(named: "EN")

                    }
                }
            
             WorkspaceData.shared.start()
        }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

