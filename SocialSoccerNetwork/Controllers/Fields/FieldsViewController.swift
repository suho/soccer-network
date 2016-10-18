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
    @IBOutlet weak var fieldsSearchBarHeightConstraint: NSLayoutConstraint!
    
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
        fieldsTableView.separatorStyle = .none
        fieldsTableView.register(UINib(nibName: "FieldsTableViewCell", bundle: nil), forCellReuseIdentifier: "FieldsTableViewCell")
        fieldsTableView.delegate = self
        fieldsTableView.dataSource = self
        fieldsTableView.rowHeight = 120
    }
    
    private func configureSearchBar() {
        fieldsSearchBar.delegate = self
    }
    
    private func isSearchBarHidden() -> Bool {
        return self.fieldsSearchBarHeightConstraint.constant == 0
    }
    
    // MARK:- Public Function
    func willHiddenSearchBar() -> Bool {
        let contentOffsetY = fieldsTableView.contentOffset.y
        return contentOffsetY > 50
    }
    
    func hiddenSearchBar() {
        if isSearchBarHidden() {
            return
        }
        UIView.animate(withDuration: 0.3) { 
            self.fieldsSearchBarHeightConstraint.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    
    func showSearchBar() {
        if !isSearchBarHidden() {
            return
        }
        UIView.animate(withDuration: 0.3) { 
            self.fieldsSearchBarHeightConstraint.constant = 44
            self.view.layoutIfNeeded()
        }
    }
}

// MARK:- UITableViewDelegate
extension FieldsViewController: UITableViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.fieldsSearchBar.endEditing(true)
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if willHiddenSearchBar() {
            hiddenSearchBar()
        } else {
            showSearchBar()
        }
    }
}

// MARK:- UITableViewDataSource
extension FieldsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FieldsTableViewCell", for: indexPath) as? FieldsTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}

// MARK:- UISearchBarDelegate
extension FieldsViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        fieldsSearchBar.text = ""
        fieldsSearchBar.endEditing(true)
    }
}
