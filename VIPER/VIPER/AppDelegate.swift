//  AppDelegate.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 13.02.2023.

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var navController = UINavigationController()
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let viewController = CountryListScreenBuilder().build()
        navController = UINavigationController(rootViewController: viewController)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        return true
    }
}

