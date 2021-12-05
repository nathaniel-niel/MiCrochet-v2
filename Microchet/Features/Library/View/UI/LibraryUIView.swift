//
//  LibraryUIView.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 06/12/21.
//

import UIKit

class LibraryUIView: UIView {

    let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        
        return table
    }()
}
