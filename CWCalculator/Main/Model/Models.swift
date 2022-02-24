//
//  Models.swift
//  CWDevTest
//
//  Created by Temitope on 23/02/2022.
//

import RealmSwift

class RateList: Object {
    var rates = List<CurrencyRate>()
}

class CurrencyRate: Object {
    @objc dynamic var code = ""
    @objc dynamic var rate = 0.0
}
