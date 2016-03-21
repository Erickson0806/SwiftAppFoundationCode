//
//  DateExtension.swift
//  CommentAppCode
//
//  Created by Erickson on 16/3/18.
//  Copyright © 2016年 paiyipai. All rights reserved.
//

import Foundation



extension NSDate {
    func isThisYear()->Bool {
        let calendar = NSCalendar.currentCalendar()
        let dateCmps = calendar.components(.Year, fromDate: self)
        let nowCmps = calendar.components(.Year, fromDate: NSDate())
        return dateCmps.year == nowCmps.year
    }
    
    func isYesterday() ->Bool {
        var now = NSDate()
        let fmt = NSDateFormatter()
        fmt.dateFormat = "yyyy-MM-dd"
        let dateStr = fmt.stringFromDate(self)
        let nowStr = fmt.stringFromDate(now)
        let date = fmt.dateFromString(dateStr)
        now = fmt.dateFromString(nowStr)!
        let calendar = NSCalendar.currentCalendar()
        let unit : NSCalendarUnit = [.Year,.Month,.Day]
        let cmps = calendar.components(unit, fromDate: date!, toDate: now, options: .WrapComponents)
        return cmps.year == 0 && cmps.month == 0 && cmps.day == 1
    }
    
    
    func isToday() -> Bool {
        let now = NSDate()
        
        let fmt = NSDateFormatter()
        fmt.dateFormat = "yyyy-MM-dd"
        let dateStr = fmt.stringFromDate(self)
        let nowStr = fmt.stringFromDate(now)
        return dateStr == nowStr
        
    }
}