//
//  FieldDetailViewController.swift
//  SocialSoccerNetwork
//
//  Created by Mylo Ho on 10/18/16.
//  Copyright © 2016 HoVanSu. All rights reserved.
//

import UIKit

enum FieldDetailSection: Int {
    case images
    case information
    case comments
    
    var title: String {
        switch self {
        case .images:
            return ""
        case .information:
            return Strings.Information
        case .comments:
            return Strings.Comments
        }
    }
    
    var numberOfRow: Int {
        switch self {
        case .images:
            return 0
        case .information:
            return 4
        case .comments:
            return 0
        }
    }
    
    var sectionHeight: CGFloat {
        switch self {
        case .images:
            let kScreenSize = UIScreen.main.bounds.size
            return (2 / 3) * kScreenSize.width
        default:
            return 30
        }
    }
}

enum InfomationSection: Int {
    case name
    case address
    case contact
    case verified
    
    var title: String {
        switch self {
        case .name:
            return Strings.NameTitle
        case .address:
            return Strings.AddressTitle
        case .contact:
            return Strings.ContactTitle
        case .verified:
            return Strings.VerifiedTitle
        }
    }
}

class FieldDetailViewController: UIViewController {
    
    // MARK:- Properties
    @IBOutlet weak var fieldTableView: UITableView!
    @IBOutlet weak var commentView: UIView!
    @IBOutlet weak var commentText: UITextField!

    // MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureFieldTableView()
        configureNavigationBar()
        title = "Harmony"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Action Function
    @IBAction func commentAction(_ sender: AnyObject) {
    }
    
    //MARK:- Private Function
    private func configureFieldTableView() {
        self.fieldTableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: self.commentView.frame.height, right: 0)
        
    }
    
    private func configureNavigationBar() {
        let addMatchButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(self.addMatchAction))
        navigationItem.rightBarButtonItem = addMatchButton
    }
    
    @objc private func addMatchAction() {
        
    }
}
