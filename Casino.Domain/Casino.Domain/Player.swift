//
//  Player.swift
//  Casino.Domain
//
//  Created by Aleksei Unshchikov on 18.07.2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import Foundation

class Player {
    private var currentGame: RollDiceGame?
    private var availableChips = Chip(amount: 0)
    private(set) var currentBet: Bet?
    
    var isInGame: Bool {
        return self.currentGame != nil
    }
    
    func join(game: RollDiceGame) throws {

        if self.isInGame {
            throw RollDiceGameError.invalidOperation
        }
    
        self.currentGame = game
        try currentGame!.add(player: self)
    }
    
    func leaveGame() throws {
    
        if !self.isInGame {
            throw RollDiceGameError.invalidOperation
        }
        self.currentGame!.remove(player: self)
        self.currentGame = nil
    }
    
    func buy(chips: Chip) {
        self.availableChips = chips
    }
    
    func has(chips: Chip) -> Bool {
        return self.availableChips >= chips;
    }
    
    func bet(_ bet: Bet) {
        self.currentBet = bet
    }
    
    func win(chipsAmount: Int) {
        self.availableChips = Chip(amount: self.availableChips.amount + chipsAmount);
        self.currentBet = nil
    }
    
    func lose() {
        self.currentBet = nil
    }
}
