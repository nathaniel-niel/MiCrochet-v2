//
//  MyProjectViewController.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 05/12/21.
//

import UIKit

class MyProjectViewController: UIViewController {

    // MARK: - UI Components
    let myProjectUI = MyProjectUI()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        tabBarController?.tabBar.tintColor = Constant.hexStringToUIColor(hex: Constant.dark_terra_cotta)
        navigationItem.searchController = myProjectUI.searchController
    }
    
    // MARK: - Auto Layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
   
        // MARK: Table View
        myProjectUI.tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0).isActive = true
        myProjectUI.tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
        myProjectUI.tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
        myProjectUI.tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    // MARK: - Setup
    private func setup(){
        // MARK: Add Subview
        view.addSubview(myProjectUI.tableView)
        
        // MARK: Setup Delegate
        myProjectUI.tableView.delegate = self
        myProjectUI.tableView.dataSource = self
        
        // MARK: Setup UI Searchbar Delegate
        myProjectUI.searchController.searchBar.delegate = self
        myProjectUI.searchController.searchResultsUpdater = self
        
        // MARK: Register Table View Cell
        myProjectUI.tableView.register(LargeTableViewCell.self , forCellReuseIdentifier: "myProjectCell")
    }
    
    // MARK: - Logic
    
}

