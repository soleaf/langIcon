//
//  ViewController.swift
//  Test
//
//  Created by ilho.ahn on 2023/07/18.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func clickClose(_ sender: Any) {
        
        NSApplication.shared.hide(self)
    }
    
}

