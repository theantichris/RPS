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
    @IBOutlet weak var computerSign: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateGame()
    }
    
    func updateGame() {
        switch gameState {
        case .start:
            view.backgroundColor = UIColor.white
            computerSign.text = "🤖"
            statusLabel.text = gameState.message
            
            playAgain.isHidden = true
            
            rock.isHidden = false
            rock.isEnabled = true
            
            paper.isHidden = false
            paper.isEnabled = true
            
            scissors.isHidden = false
            scissors.isEnabled = true
        case .win:
            view.backgroundColor = UIColor.green
        case .lose:
            view.backgroundColor = UIColor.red
        case .draw:
            view.backgroundColor = UIColor.yellow
        }
    }
}

