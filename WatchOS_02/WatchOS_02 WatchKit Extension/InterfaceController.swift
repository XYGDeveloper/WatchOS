//
//  InterfaceController.swift
//  WatchOS_02 WatchKit Extension
//
//  Created by ll on 2019/6/7.
//  Copyright © 2019 ll. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var ModelJump: WKInterfaceButton!
    
    @IBOutlet weak var Push: WKInterfaceButton!
    
    
    @IBAction func toModelAction() {
        presentController(withName: "SecondInterfaceController", context: "传个数据吧")
    }
    
    @IBAction func toPushAction() {
        
        pushController(withName: "SecondInterfaceController", context: "传个数据吧")
    }
    
    
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
