//
//  WBMainViewController.swift
//  MyWeibo
//
//  Created by wendf on 2017/7/14.
//  Copyright © 2017年 HMYD. All rights reserved.
//

import UIKit


//主控制器
class WBMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupChildControllers()
    }
}


extension WBMainViewController {
    //设置所有子控制器
     func setupChildControllers() {
        let array = [
            ["clsName": "WBHomeViewController", "title": "首页", "imageName": ""]
        ]
        
        var arrayM = [UIViewController]()
        for dict in array {
            arrayM.append(controller(dict: dict))
        }
        viewControllers = arrayM
    }
    
    private func controller(dict: [String: String]) -> UIViewController {
        //1、取得字典内容
        
        guard let clsName = dict["clsName"],
        let title = dict["title"],
        let imageName = dict["imageName"],
        let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type
            else{
            
            return UIViewController()
        }
        //2、创建视图控制器
        let vc = cls.init()
        
        vc.title = title
        
        let nav = WBNavigationController(rootViewController: vc)
        
        return nav
    }
}
