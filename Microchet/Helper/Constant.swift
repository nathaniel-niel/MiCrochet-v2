//
//  Constant.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 05/12/21.
//

import Foundation
import UIKit

struct Constant{
    
    // MARK: - Hex to color converter
    static func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    // MARK: - Colors
    static let dark_terra_cotta = "#CF5154"
    static let light_coral = "#EB838E"
    static let mauvelous = "#F09AA7"
    static let black90 = "#202020"
    static let shadowColor = "#DDDDDD"
    static let white = "#FBFBFB"
    
    // MARK: -Fonts
    static let fontPoppinsRegular = "Poppins-Regular"
    static let fontPoppinsSemibold = "Poppins-SemiBold"
    static let fontPoppinsBold = "Poppins-Bold"
    static let fontsizeTitle = 34.0
    static let fontsizeTitle1 = 28.0
    static let fontsizeTitle2 = 22.0
    static let fontsizeTitle3 = 20.0
    static let fontsizeBody = 17.0
    static let fontsizeFootnote = 13.0
    
    
}
