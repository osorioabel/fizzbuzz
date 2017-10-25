//
//  Core.swift
//  FizzBuzz
//
//  Created by Abel Osorio on 10/24/17.
//  Copyright © 2017 O'S Mobile Lab. All rights reserved.
//

import Foundation

class Core {
    // MARK: - Private helpers
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }

    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }

    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }

    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }

    // MARK: - Internal helpers
    func check(number: Int) -> Move {
        switch true {
        case isDivisibleByFifteen(number: number):
            return .fizzBuzz
        case isDivisibleByFive(number: number):
            return .buzz
        case isDivisibleByThree(number: number):
            return .fizz
        default:
            return .number
        }
    }
}
