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
        
        statusLabel.text = gameState.message
    }


}

