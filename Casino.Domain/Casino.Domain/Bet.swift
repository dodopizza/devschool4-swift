//
//  Bet.swift
//  Casino.Domain
//
//  Created by Aleksei Unshchikov on 18.07.2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import Foundation

class Bet {
    var chips: Chip
    var score: Int
    
    init(chips: Chip, score: Int) {
        self.chips = chips
        self.score = score
    }
}
