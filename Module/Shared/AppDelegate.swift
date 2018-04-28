//
//  AppDelegate.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 27/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private let navigator = Navigator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController()
        window?.makeKeyAndVisible()
        navigator.show(segue: .home(source: Source.mainMenu), sender: window?.rootViewController ?? window?.rootViewController ?? UIViewController())
        return true
    }
}

