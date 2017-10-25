//
//  GameViewController.swift
//  FizzBuzz
//
//  Created by Abel Osorio on 10/25/17.
//  Copyright © 2017 O'S Mobile Lab. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    // MARK: - IBOulets
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!

    // MARK: - Internal Properties
    var gameScore: Int? {
        didSet {
            guard let score = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(score)", for: .normal)
        }
    }
    var game: Game?

    // MARK: - Life cycle
    init() {
        super.init(nibName: String(describing: GameViewController.self), bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    // MARK: - Internal helpers
    fileprivate func setupView() {
        title = ""
        game = Game()

        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        gameScore = checkedGame.score
    }

    // MARK: - IBActions
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .number)
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzBuzzButton:
            play(move: .fizzBuzz)
        default:
            print("Invalid selection")
        }
    }

    // MARK: - Other Actions
    func play(move: Move) {
        guard let actualGame = game else { print("Game is nil") ; return }
        let result = actualGame.play(move: move)
        gameScore = result.score
    }
}
