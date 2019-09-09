//
//  AppDelegate.swift
//  QCourse
//
//  Created by Qing-Cheng Li on 2019/9/4.
//  Copyright © 2019 Qing-Cheng Li. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window.makeKeyAndVisible()
        window.rootViewController = ViewController()
        return true
    }


}

