//
//  Chip.swift
//  Casino.Domain
//
//  Created by Aleksei Unshchikov on 18.07.2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import Foundation

class Chip {
    var amount: Int
    
    init(amount: Int) {
        self.amount = amount
    }
}

extension Chip {
    static func >= (left: Chip, right: Chip) -> Bool {
        return left.amount >= right.amount
    }
    
    static func <= (left: Chip, right: Chip) -> Bool {
        return left.amount <= right.amount
    }
}
