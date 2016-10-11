//
//  LoginViewController.swift
//  SocialSoccerNetwork
//
//  Created by Mylo Ho on 10/10/16.
//  Copyright © 2016 HoVanSu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK:- Properties
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- Action Function
    @IBAction func signInAction(_ sender: AnyObject) {
        AppDelegate.shared.changeRootViewWhenLoginSuccess()
    }
    
    @IBAction func signUpAction(_ sender: AnyObject) {
    }
}
