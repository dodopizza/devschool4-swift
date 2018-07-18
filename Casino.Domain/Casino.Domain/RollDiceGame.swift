//
//  RollDiceGame.swift
//  Casino.Domain
//
//  Created by Aleksei Unshchikov on 18.07.2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import Foundation

public class RollDiceGame
{
    var players: [Player] = []
    
    func add(player: Player) throws
    {
        if players.count == 6 {
            throw RollDiceGameError.tooManyPlayers
        }
        
        players.append(player)
    }
    
    func remove(player: Player) {
        guard let index = self.players.index(where: { $0 === player }) else {
            return
        }
        self.players.remove(at: index)
    }
    
    func play() {
        let luckyScore = arc4random_uniform(6) + 1
        for player in self.players {
            if player.currentBet == nil {
                continue
            }
            
            if player.currentBet!.score == luckyScore {
                player.win(chipsAmount: player.currentBet!.chips.amount * 6)
            } else {
                player.lose()
            }
        }
    }
}
