//
//  PatternUIView.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 06/12/21.
//

import UIKit

class PatternUIView: UIView {

    let segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl()
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.insertSegment(withTitle: "Progressing", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "All", at: 1, animated: true)
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()
    
    let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        
        return table
    }()
}
