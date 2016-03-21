//
//  AppMacro.swift
//  CommentAppCode
//
//  Created by Erickson on 16/3/18.
//  Copyright © 2016年 paiyipai. All rights reserved.
//

import UIKit


struct AppConstant {
    /// 屏宽
    static var screenWidth: CGFloat { return UIScreen.mainScreen().bounds.width }
    /// 屏高
    static var screenHeight: CGFloat { return UIScreen.mainScreen().bounds.height }
    /// 设备标识
    static var did :String {return NSUUID().UUIDString}
    
    /// 系统版本
    static var systemVersion : Float {return Float(UIDevice.currentDevice().systemVersion)!}
    /// 当前版本号
    static var appVersion :String {return NSBundle.mainBundle().infoDictionary!["CFBundleShortVersionString"] as! String }
    /// 内部版本号
    static var aBuildVersion :String {return NSBundle.mainBundle().infoDictionary!["CFBundleVersion"] as! String }

    /// iTunesURL
    static var iTunesURL :String {return "itms-apps://itunes.apple.com/app/"}

    /// Documents路径
    static var documentsPath :String {return NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]}
    /// Library/Caches 路径
    static var cachePath :String {return NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true).last!}
   
    
}
