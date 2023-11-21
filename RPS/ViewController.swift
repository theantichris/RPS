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
    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBAction func rockButtonClicked(_ sender: Any) {
        play(usersSign: .rock)
    }
    
    @IBAction func paperButtonClicked(_ sender: Any) {
        play(usersSign: .paper)
    }
    
    @IBAction func scissorsButtonClicked(_ sender: Any) {
        play(usersSign: .scissors)
    }
    
    @IBAction func playAgainButtonClicked(_ sender: Any) {
        startGame()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startGame()
    }
    
    func startGame() {
        gameState = .start
        
        computerLabel.text = "🤖"
        statusLabel.text = gameState.message
        view.backgroundColor = gameState.backgroundColor
        
        playAgainButton.isEnabled = false
        playAgainButton.isHidden = true
        
        rockButton.isHidden = false
        rockButton.isEnabled = true
        
        paperButton.isHidden = false
        paperButton.isEnabled = true
        
        scissorsButton.isHidden = false
        scissorsButton.isEnabled = true
    }
    
    func play(usersSign: Sign) {
        let computersSign = randomSign()
        computerLabel.text = computersSign.emoji
        
        gameState = usersSign.gameResults(for: computersSign)
        
        statusLabel.text = gameState.message
        view.backgroundColor = gameState.backgroundColor
        
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        switch usersSign {
        case .rock:
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
        }
        
        playAgainButton.isEnabled = true
        playAgainButton.isHidden = false
    }
}

