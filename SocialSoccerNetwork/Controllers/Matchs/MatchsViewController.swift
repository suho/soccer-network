//
//  MatchsViewController.swift
//  SocialSoccerNetwork
//
//  Created by Mylo Ho on 10/11/16.
//  Copyright © 2016 HoVanSu. All rights reserved.
//

import UIKit

class MatchsViewController: UIViewController {

    // MARK:- Properties
    @IBOutlet weak var matchsSearchBar: UISearchBar!
    @IBOutlet weak var matchsTableView: UITableView!
    
    // MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureSearchBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK:- Private Function
    private func configureTableView() {
        matchsTableView.delegate = self
    }
    
    private func configureSearchBar() {
        matchsSearchBar.delegate = self
    }
}

// MARK:- UITableViewDelegate
extension MatchsViewController: UITableViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        matchsSearchBar.endEditing(true)
    }
}

// MARK:- 
extension MatchsViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        matchsSearchBar.text = ""
        matchsSearchBar.endEditing(true)
    }
}
