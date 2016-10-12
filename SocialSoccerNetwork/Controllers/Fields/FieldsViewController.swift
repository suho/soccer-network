//
//  FieldsViewController.swift
//  SocialSoccerNetwork
//
//  Created by Mylo Ho on 10/11/16.
//  Copyright © 2016 HoVanSu. All rights reserved.
//

import UIKit

class FieldsViewController: UIViewController {

    // MARK:- Properties
    @IBOutlet weak var fieldsSearchBar: UISearchBar!
    @IBOutlet weak var fieldsTableView: UITableView!
    
    // MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fieldsTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

// MARK:- UITableViewDelegate
extension FieldsViewController: UITableViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.fieldsSearchBar.endEditing(true)
    }
}
