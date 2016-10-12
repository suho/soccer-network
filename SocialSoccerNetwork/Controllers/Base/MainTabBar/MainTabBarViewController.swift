//
//  MainTabBarViewController.swift
//  SocialSoccerNetwork
//
//  Created by Mylo Ho on 10/12/16.
//  Copyright © 2016 HoVanSu. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    // MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureMainTabBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK:- Private Function
    private func configureMainTabBar() {
        self.viewControllers = [fieldsViewController(), matchsViewController(), profileViewController()]
        self.selectedIndex = 1
    }
    
    private func fieldsViewController() -> UIViewController {
        let fieldsViewController = FieldsViewController(nibName: "FieldsViewController", bundle: nil)
        fieldsViewController.title = "Fields"
        let fieldsNavigationController = UINavigationController(rootViewController: fieldsViewController)
        fieldsNavigationController.title = fieldsViewController.title
        fieldsNavigationController.tabBarItem.image = UIImage(named: "stadium_ic")?.withRenderingMode(.automatic)
        return fieldsNavigationController
    }
    
    private func matchsViewController() -> UIViewController {
        let matchsViewController = MatchsViewController(nibName: "MatchsViewController", bundle: nil)
        matchsViewController.title = "Matchs"
        let matchsNavigationController = UINavigationController(rootViewController: matchsViewController)
        matchsNavigationController.title = matchsViewController.title
        matchsNavigationController.tabBarItem.image = UIImage(named: "football_ic")?.withRenderingMode(.automatic)
        return matchsNavigationController
    }
    
    private func profileViewController() -> UIViewController {
        let profileViewController = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        profileViewController.title = "Profile"
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        profileNavigationController.title = profileViewController.title
        profileNavigationController.tabBarItem.image = UIImage(named: "profile_ic")?.withRenderingMode(.automatic)
        return profileNavigationController
    }

}
