//
//  ColorExtension.swift
//  CommentAppCode
//
//  Created by Erickson on 16/3/18.
//  Copyright © 2016年 paiyipai. All rights reserved.
//

import Foundation
import UIKit


extension UIColor {
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
}

extension CGColor {
    class func colorWithHex(hex: Int) -> CGColorRef {
        return UIColor(hex: hex).CGColor
    }
}