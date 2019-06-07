//
//  InterfaceController.swift
//  WatchOS_01 WatchKit Extension
//
//  Created by ll on 2019/6/7.
//  Copyright © 2019 ll. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var img: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        img.setImageNamed("bird")
        //
        img.setImage(UIImage(named: "fj"))
        
        let imgdata = UIImage.pngData(UIImage(named: "fj")!)
        
        img.setImageData(imgdata());
        
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
    
    
    /*
     参考文章 ：https://www.jianshu.com/p/7c223446040c
     AppleWatch开发入门（1）——界面布局
    */

}
