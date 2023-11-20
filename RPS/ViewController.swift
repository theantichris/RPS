//
//  ViewController.swift
//  RPS
//
//  Created by Christopher Lamm on 11/20/23.
//

import UIKit

class ViewController: UIViewController {
    var gameState: GameState = .start

    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateGame()
    }
    
    func updateGame() {
        switch gameState {
        case .start:
            view.backgroundColor = UIColor.white
            statusLabel.text = gameState.message
        case .win:
            view.backgroundColor = UIColor.green
        case .lose:
            view.backgroundColor = UIColor.red
        case .draw:
            view.backgroundColor = UIColor.yellow
        }
    }
}

