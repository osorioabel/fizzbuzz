//
//  BrainTests.swift
//  fizzbuzzgameTests
//
//  Created by Abel Osorio on 10/24/17.
//  Copyright © 2017 O'S Mobile Lab. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    let core = Core()

    func testIsDivisibleByThree() {
        XCTAssertTrue(core.isDivisibleByThree(number: 3))
    }

    func testIsNotDivisibleByThree() {
        XCTAssertFalse(core.isDivisibleByThree(number: 4))
    }

    func testIsDivisibleByFive() {
        XCTAssertTrue(core.isDivisibleByFive(number: 5))
    }

    func testIsNotDivisibleByFive() {
        XCTAssertFalse(core.isDivisibleByFive(number: 7))
    }

    func testIsDivisibleByFifteen() {
        XCTAssertTrue(core.isDivisibleByFifteen(number: 30))
    }

    func testIsNotDivisibleByFifteen() {
        XCTAssertFalse(core.isDivisibleByFifteen(number: 21))
    }

    func testSayFizz() {
        XCTAssertEqual(core.check(number: 3), Move.fizz)
    }

    func testSayBuzz() {
        XCTAssertEqual(core.check(number: 5), Move.buzz)
    }

    func testSayFizzBuzz() {
        XCTAssertEqual(core.check(number: 15), Move.fizzBuzz)
    }

    func testSayOne() {
        XCTAssertEqual(core.check(number: 1), Move.number)
    }

}
