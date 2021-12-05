//
//  PatternModel.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 06/12/21.
//

import Foundation
import UIKit

struct PatternModel {
    var image: UIImage
    var title: String
    var hookSize: String
    var yarn: String
    var status: Status
}

enum Status{
    case none
    case progressing
    case completed
}
