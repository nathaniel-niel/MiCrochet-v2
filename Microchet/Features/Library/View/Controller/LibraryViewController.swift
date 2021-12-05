//
//  LibraryViewController.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 05/12/21.
//

import UIKit

class LibraryViewController: UIViewController {
    
    // MARK: - UI Components
    let libraryUI = LibraryUIView()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: Auto Layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // MARK: Table View
        libraryUI.tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0).isActive = true
        libraryUI.tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
        libraryUI.tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
        libraryUI.tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    // MARK: - Setup
    private func setup(){
        // MARK: Add Subview
        view.addSubview(libraryUI.tableView)
        
        // MARK: Setup Delegate
        libraryUI.tableView.delegate = self
        libraryUI.tableView.dataSource = self
        
        // MARK: Register Table View Cell
        libraryUI.tableView.register(RegularTableViewCell.self , forCellReuseIdentifier: "libraryCell")
    }
    // MARK: - Logic



}
