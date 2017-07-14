//
//  AppDelegate.swift
//  MyWeibo
//
//  Created by wendf on 2017/7/14.
//  Copyright © 2017年 HMYD. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.backgroundColor = UIColor.white
        
        window?.rootViewController = WBMainViewController()
        window?.makeKeyAndVisible()
        
        return true
    }


}

