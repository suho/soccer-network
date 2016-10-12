//
//  AppDelegate.swift
//  SocialSoccerNetwork
//
//  Created by Mylo Ho on 10/10/16.
//  Copyright © 2016 HoVanSu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    static let shared = UIApplication.shared.delegate as! AppDelegate

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = loginViewController()
        window?.makeKeyAndVisible()
        return true
    }
    
    func changeRootViewWhenLoginSuccess() {
        window?.rootViewController = mainTabBarController()
    }
    
    func changeRootViewWhenLogout() {
        window?.rootViewController = loginViewController()
    }
    
    func loginViewController() -> UIViewController {
        let loginViewController = LoginViewController()
        loginViewController.title = "Login"
        let loginNavigationController = UINavigationController(rootViewController: loginViewController)
        return loginNavigationController
    }
    
    func mainTabBarController() -> UITabBarController {
        return MainTabBarViewController()
    }
    
}
