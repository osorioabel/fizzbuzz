//
//  Game.swift
//  FizzBuzz
//
//  Created by Abel Osorio on 10/24/17.
//  Copyright © 2017 O'S Mobile Lab. All rights reserved.
//

import Foundation

class Game {
    // MARK: - Private Properties
    private let core: Core = Core()

    // MARK: - Internal Properties
    var score = 0

    // MARK: - Internal helpers
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = core.check(number: score + 1)

        if result == move {
            score += 1
            return (true, score)
        }
        return (false, score)
    }
}
