//
//  InterfaceController.swift
//  WatchOS_06 WatchKit Extension
//
//  Created by ll on 2019/6/7.
//  Copyright © 2019 ll. All rights reserved.
//

import WatchKit
import Foundation
import UserNotifications

class InterfaceController: WKInterfaceController {

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
    
    //重写下面方法来响应点击事件
//    override func handleAction(withIdentifier identifier: String?, for notification: UNNotification) {
//
//    }

}
