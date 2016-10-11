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
        let loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        loginViewController.title = "Login"
        let loginNavigationController = UINavigationController(rootViewController: loginViewController)
        return loginNavigationController
    }
    
    func mainTabBarController() -> UITabBarController {
        let mainTabBarController: UITabBarController = UITabBarController()
        mainTabBarController.viewControllers = [fieldsViewController(), matchsViewController(), profileViewController()]
        mainTabBarController.selectedIndex = 1
        return mainTabBarController
    }
    
    func fieldsViewController() -> UIViewController {
        let fieldsViewController = FieldsViewController(nibName: "FieldsViewController", bundle: nil)
        fieldsViewController.title = "Fields"
        let fieldsNavigationController = UINavigationController(rootViewController: fieldsViewController)
        fieldsNavigationController.title = fieldsViewController.title
        fieldsNavigationController.tabBarItem.image = UIImage(named: "stadium_ic")?.withRenderingMode(.automatic)
        return fieldsNavigationController
    }
    
    func matchsViewController() -> UIViewController {
        let matchsViewController = MatchsViewController(nibName: "MatchsViewController", bundle: nil)
        matchsViewController.title = "Matchs"
        let matchsNavigationController = UINavigationController(rootViewController: matchsViewController)
        matchsNavigationController.title = matchsViewController.title
        matchsNavigationController.tabBarItem.image = UIImage(named: "football_ic")?.withRenderingMode(.automatic)
        return matchsNavigationController
    }
    
    func profileViewController() -> UIViewController {
        let profileViewController = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        profileViewController.title = "Profile"
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        profileNavigationController.title = profileViewController.title
        profileNavigationController.tabBarItem.image = UIImage(named: "profile_ic")?.withRenderingMode(.automatic)
        return profileNavigationController
    }
    
}
