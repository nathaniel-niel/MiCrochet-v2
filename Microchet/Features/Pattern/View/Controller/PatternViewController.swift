//
//  PatternViewController.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 05/12/21.
//

import UIKit

class PatternViewController: UIViewController {
    
    // MARK: - UI Components
    let patternUI = PatternUIView()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        tabBarController?.tabBar.tintColor = Constant.hexStringToUIColor(hex: Constant.dark_terra_cotta)
    }
    
    // MARK: - Auto Layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // MARK: Segmented Control
        patternUI.segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8.0).isActive = true
        patternUI.segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
        patternUI.segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
        
        // MARK: Table View
        patternUI.tableView.topAnchor.constraint(equalTo: patternUI.segmentedControl.bottomAnchor, constant: 16.0).isActive = true
        patternUI.tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
        patternUI.tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
        patternUI.tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    // MARK: - Setup
    private func setup(){
        // MARK: Add Subview
        view.addSubview(patternUI.segmentedControl)
        view.addSubview(patternUI.tableView)
        
        // MARK: Setup Delegate
        patternUI.tableView.delegate = self
        patternUI.tableView.dataSource = self
        
        // MARK: Register Table View Cell
        patternUI.tableView.register(LargeTableViewCell.self , forCellReuseIdentifier: "patternCell")
    }
    
    // MARK: - Logic
    
}
