//
//  CustomFont.swift
//  CWDevTest
//
//  Created by Temitope on 23/02/2022.
//

import UIKit


enum MontserratAlternatesFont: String {
    case bold = "MontserratAlternates-Bold"
    case semiBold = "MontserratAlternates-SemiBold"
    case regular = "MontserratAlternates-Regular"
    case medium = "MontserratAlternates-Medium"
}


class CustomFont {
    static func of(type: MontserratAlternatesFont, size: Int) -> UIFont {
        return UIFont(name: type.rawValue, size: CGFloat(size)) ?? UIFont()
    }
}
