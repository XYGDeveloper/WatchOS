//
//  InterfaceController.swift
//  WatchApp_05 WatchKit Extension
//
//  Created by ll on 2019/6/7.
//  Copyright © 2019 ll. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBAction func sureAction() {
        
        print("sure")
    }
    
    @IBAction func addAction() {
        print("add")
    }
    
    //https://www.jianshu.com/p/d03419e28496
    //AppleWatch开发入门（5）——Menu的使用
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
