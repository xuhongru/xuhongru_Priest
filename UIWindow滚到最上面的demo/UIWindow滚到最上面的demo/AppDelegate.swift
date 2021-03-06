//
//  AppDelegate.swift
//  UIWindow滚到最上面的demo
//
//  Created by 胥鸿儒 on 16/7/23.
//  Copyright © 2016年 xuhongru. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var topWindow:UIWindow?
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        //设置keyWindow的跟控制器
        window?.rootViewController = UINavigationController(rootViewController: SuperViewController())
        //初始化顶部窗口
        setupTopWindow()
        window?.makeKeyAndVisible()
        return true
    }

    /**
     初始化顶部窗口,并设置其跟控制器,注意Xcode7以后窗口不设置跟控制器就报错
     */
    private func setupTopWindow()
    {
        topWindow = UIWindow(frame:UIApplication.sharedApplication().statusBarFrame)
        topWindow?.windowLevel = UIWindowLevelAlert
        topWindow?.backgroundColor = UIColor.clearColor()
        topWindow?.rootViewController = TopWindowViewController()
        topWindow?.backgroundColor = UIColor.blueColor()
        topWindow?.hidden = false
    }
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

