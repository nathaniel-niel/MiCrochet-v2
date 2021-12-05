//
//  MyProjectUI.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 06/12/21.
//

import UIKit

class MyProjectUI: UIView {

    let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        
        return table
    }()
    
    let searchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        return searchController
    }()

}
