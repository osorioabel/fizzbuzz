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
            numberButton.setTitle("\(game.score)", for: .normal)
        }
    }
    var game: Game

    // MARK: - Life cycle
    init() {
        self.game = Game()
        super.init(nibName: String(describing: GameViewController.self), bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        self.game = Game()
        super.init(nibName: nil, bundle: nil)
    }

    // MARK: - View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    // MARK: - Internal helpers
    fileprivate func setupView() {
        gameScore = game.score
    }

    // MARK: - IBActions
    @IBAction func fizzButtonTapped(_ sender: UIButton) {
        play(move: .fizz)
    }

    @IBAction func numberButtonTapped(_ sender: UIButton) {
        play(move: .number)
    }

    @IBAction func buzzbuttonTapped(_ sender: UIButton) {
        play(move: .buzz)
    }

    @IBAction func fizzBuzzbuttonTapped(_ sender: UIButton) {
        play(move: .fizzBuzz)
    }

    // MARK: - Other Actions
    func play(move: Move) {
        let result = game.play(move: move)
        gameScore = result.score
    }
}
