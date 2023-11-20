//
//  Sign.swift
//  RPS
//
//  Created by Christopher Lamm on 11/20/23.
//

import Foundation

enum Sign {
    case rock, paper, scissors
    
    var getSign: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        default:
            return "✌️"
        }
    }
}
