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
        updateGame()
    }
    
    @IBAction func paperButtonClicked(_ sender: Any) {
        play(usersSign: .paper)
        updateGame()
    }
    
    @IBAction func scissorsButtonClicked(_ sender: Any) {
        play(usersSign: .scissors)
        updateGame()
    }
    
    @IBAction func playAgainButtonClicked(_ sender: Any) {
        gameState = .start
        updateGame()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateGame()
    }
    
    func updateGame() {
        switch gameState {
        case .start:
            view.backgroundColor = UIColor.white
            computerLabel.text = "🤖"
            statusLabel.text = gameState.message
            
            playAgainButton.isEnabled = false
            playAgainButton.isHidden = true
            
            rockButton.isHidden = false
            rockButton.isEnabled = true
            
            paperButton.isHidden = false
            paperButton.isEnabled = true
            
            scissorsButton.isHidden = false
            scissorsButton.isEnabled = true
        case .win:
            view.backgroundColor = UIColor.green
            statusLabel.text = gameState.message
        case .lose:
            view.backgroundColor = UIColor.red
            statusLabel.text = gameState.message
        case .draw:
            view.backgroundColor = UIColor.yellow
            statusLabel.text = gameState.message
        }
    }
    
    func play(usersSign: Sign) {
        let computersSign = randomSign()
        computerLabel.text = computersSign.emoji
        
        gameState = usersSign.gameResults(for: computersSign)
        
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

