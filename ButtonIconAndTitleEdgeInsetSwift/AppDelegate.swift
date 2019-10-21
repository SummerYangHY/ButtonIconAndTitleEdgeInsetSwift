//
//  AppDelegate.swift
//  ButtonIconAndTitleEdgeInsetSwift
//
//  Created by Summer on 2019/10/18.
//  Copyright © 2019 Summer. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let vc:ViewController = ViewController.init()
        window?.rootViewController = vc
        return true
    }

  

}

