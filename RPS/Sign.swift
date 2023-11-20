//
//  Sign.swift
//  RPS
//
//  Created by Christopher Lamm on 11/20/23.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    
    var getEmoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func gameResults(for opponentSign: Sign) -> GameState {
        var gameState: GameState = .draw
        
        switch self {
        case .rock:
            if opponentSign == .rock {
                gameState = .draw
            }
            
            if opponentSign == .paper {
                gameState = .lose
            }
            
            if opponentSign == .scissors {
                gameState = .win
            }
        case .paper:
            if opponentSign == .rock {
                gameState = .win
            }
            
            if opponentSign == .paper {
                gameState = .draw
            }
            
            if opponentSign == .scissors {
                gameState = .lose
            }
        case .scissors:
            if opponentSign == .rock {
                gameState = .lose
            }
            
            if opponentSign == .paper {
                gameState = .win
            }
            
            if opponentSign == .scissors {
                gameState = .draw
            }
        }
        
        return gameState
    }
}
