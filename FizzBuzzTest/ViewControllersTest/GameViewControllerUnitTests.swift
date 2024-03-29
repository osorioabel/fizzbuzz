//
//  GameViewControllerUnitTests.swift
//  FizzBuzzTests
//
//  Created by Abel Osorio on 10/25/17.
//  Copyright © 2017 O'S Mobile Lab. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameViewControllerUnitTests: XCTestCase {

    var viewController: GameViewController!

    override func setUp() {
        super.setUp()
        viewController = GameViewController()
        UIApplication.shared.keyWindow!.rootViewController = viewController

        viewController.preloadView()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testRequireViewControllerInit() {
        let viewController = GameViewController(coder: NSCoder())
        XCTAssertNotNil(viewController)
    }

    func testMove1IncrementScore() {
        viewController.play(move: .number)
        XCTAssertEqual(viewController.gameScore, 1)
    }

    func testNumberMoveIncrementScoreByIBAction() {
        viewController.numberButtonTapped(UIButton())
        XCTAssertEqual(viewController.gameScore, 1)
    }

    func testMove2IncrementScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }

    func testHasGame() {
        XCTAssertNotNil(viewController.game)
    }

    func testFizzIncrementScore() {
        viewController.game.score = 2
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }

    func testFizzIncrementScoreByIBAction() {
        viewController.game.score = 2
        viewController.fizzButtonTapped(UIButton())
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }

    func testBuzzIncrementScore() {
        viewController.game.score = 4
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }

    func testBuzzIncrementScoreByIBAction() {
        viewController.game.score = 4
        viewController.buzzbuttonTapped(UIButton())
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }

    func testFizzBuzzIncrementScore() {
        viewController.game.score = 14
        viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }

    func testFizzBuzzIncrementScoreByIBAction() {
        viewController.game.score = 14
        viewController.fizzBuzzbuttonTapped(UIButton())
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }

    func testFizzBuzzWrongPlay() {
        viewController.game.score = 14
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 14)
    }

    func testOnWrongMoveScoreNotIncremented() {
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
}
