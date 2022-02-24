//
//  DateHelper.swift
//  CWDevTest
//
//  Created by Temitope on 23/02/2022.
//

import Foundation

class DateHelper {
    
    static func convert(date: String, to: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        guard let date = dateFormatter.date(from:date) else { return nil }
        dateFormatter.dateFormat = to
        let displayDate = dateFormatter.string(from: date)
        return displayDate
    }

}
