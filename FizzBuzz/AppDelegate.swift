//
//  AppDelegate.swift
//  fizzbuzzgame
//
//  Created by Abel Osorio on 10/24/17.
//  Copyright © 2017 O'S Mobile Lab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setupRootViewController()
        return true
    }
}

extension AppDelegate {
    fileprivate func setupRootViewController() {
        let window: UIWindow = UIWindow()
        self.window = window

        let rootViewController = GameViewController()
        window.rootViewController = rootViewController
        window.frame = UIScreen.main.bounds

        window.makeKeyAndVisible()
    }
}
