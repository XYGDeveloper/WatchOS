//
//  InterfaceController.swift
//  WatchOS_4 WatchKit Extension
//
//  Created by ll on 2019/6/7.
//  Copyright © 2019 ll. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var listPicker: WKInterfacePicker!
    
    @IBOutlet weak var stackPicker: WKInterfacePicker!
    
    @IBOutlet weak var squeuePicker: WKInterfacePicker!
    
    lazy var items:[WKPickerItem] = {
        var its = [WKPickerItem]()
        for i in 0...4{
            let item = WKPickerItem()
            item.title = "Title" + "\(i)"
            item.caption = "Caption" + "\(i)"
//            item.accessoryImage = WKImage(image: UIImage(named: "ad_0" + "\(i)")!)
//            item.contentImage = WKImage(image: UIImage(named: "ad_0" + "\(i)")!)
            its.append(item)
        }
        return its
    }()
    
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        listPicker.setItems(items)
        
        stackPicker.setItems(items)
        
        squeuePicker.setItems(items)
        
        squeuePicker.focus()
   
        // Configure interface objects here.
    }
    
    
    @IBAction func a(_ value: Int) {
        print(value)
    }
    
    // https://www.jianshu.com/p/77f1524d9b7b
    //AppleWatch开发入门（4）——Picker视图的应用
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
