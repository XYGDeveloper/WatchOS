//
//  AppDelegate.swift
//  WatchOS_06
//
//  Created by ll on 2019/6/7.
//  Copyright © 2019 ll. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // 消息中心
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.badge, .alert, .sound]) { (isSuccess, error) in
            if !isSuccess { print(error) }
        }
        // 5秒后触发消息推送
        let timeTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let requestIdentifier = "requestIdentifier"
        
        // 消息推送的内容
        let content = UNMutableNotificationContent()
        content.title = "通知来了"
        content.subtitle = "这里是一个测试用例通知的子标题"
        content.body = "这里是用于 Apple Watch 通知 Demo 的内容详情。"
        content.badge = 1
        content.sound = UNNotificationSound.default
        content.categoryIdentifier = requestIdentifier
        
        // 添加按钮
        let join = UNNotificationAction(identifier: "join", title: "接受邀请", options: .authenticationRequired)
        let look = UNNotificationAction(identifier: "look", title: "查看邀请", options: .foreground)
        let cancel = UNNotificationAction(identifier: "cancel", title: "取消", options: .destructive)
        let input = UNTextInputNotificationAction(identifier: "input", title: "请输入", options: .foreground, textInputButtonTitle: "发送", textInputPlaceholder: "tell me loudly")
        let notificationCategory = UNNotificationCategory(identifier: requestIdentifier, actions: [join, look, cancel], intentIdentifiers: [], options: .customDismissAction)
        var set = Set<UNNotificationCategory>()
        set.insert(notificationCategory)
        center.setNotificationCategories(set)
        
        let request = UNNotificationRequest(identifier: requestIdentifier, content: content, trigger: timeTrigger)
        center.add(request, withCompletionHandler: nil)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

