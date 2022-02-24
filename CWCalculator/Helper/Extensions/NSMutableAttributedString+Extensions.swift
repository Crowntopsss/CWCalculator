//
//  NSMutableAttributedString+Extensions.swift
//  CWDevTest
//
//  Created by Temitope on 23/02/2022.
//

import UIKit

extension NSMutableAttributedString {
    func setColor(color: UIColor, forText stringValue: String) {
       let range: NSRange = self.mutableString.range(of: stringValue, options: .caseInsensitive)
       self.addAttribute(NSAttributedStringKey.foregroundColor, value: color, range: range)
    }
}
