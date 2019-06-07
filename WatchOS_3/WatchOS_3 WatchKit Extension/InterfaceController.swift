//
//  InterfaceController.swift
//  WatchOS_3 WatchKit Extension
//
//  Created by ll on 2019/6/7.
//  Copyright © 2019 ll. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var tableview: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let dict = [["name" : "中国建设银行", "money" : "￥1000"],
                    ["name" : "中国农业银行", "money" : "￥5000"],
                    ["name" : "中国工商银行", "money" : "￥2000"],
                    ["name" : "中国招商银行", "money" : "￥4010"],
                    ["name" : "中国邮政储蓄", "money" : "￥1100"]]
        
        tableview.setNumberOfRows(dict.count, withRowType: "TableRow")
        
        for (idx, info) in dict.enumerated() {
            let cell = tableview.rowController(at: idx) as TableRowController
            cell.titleLabel.setText(info["name"])
            cell.numberLabel.setText(info["money"])
        }
        // Configure interface objects here.
    }
    
    //点击事件
    
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        //通过拖拽传旨
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        //通过table点击事件传旨
    }
   
    
    
    // https://www.jianshu.com/p/df824088cfd0
    //AppleWatch开发入门（3）——Table视图的应用
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
