//
//  GameState.swift
//  RPS
//
//  Created by Christopher Lamm on 11/20/23.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    
    var message: String {
        switch self{
        case .win:
            return "You won!"
        case .lose:
            return "You lost!"
        case .draw:
            return "It's a draw!"
        default:
            return "Choose your weapon!"
        }
    }
}
