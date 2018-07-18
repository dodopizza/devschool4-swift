//
//  RollDiceGameError.swift
//  Casino.Domain
//
//  Created by Aleksei Unshchikov on 18.07.2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import Foundation

enum RollDiceGameError: Error {
    case tooManyPlayers
    case invalidOperation
}
