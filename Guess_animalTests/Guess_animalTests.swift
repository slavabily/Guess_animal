//
//  Guess_animalTests.swift
//  Guess_animalTests
//
//  Created by slava bily on 30/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import XCTest
@testable import Guess_animal

class Guess_animalTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLoadingAnimals() {
        let model = GuessAnimalModel(testing: true)
        XCTAssert(model.count == 6, "count = \(model.count)")
    }
    
    func testLoadingQuestion() {
        let model = GuessAnimalModel(testing: true)
        XCTAssert(model.question == "bear", "question = \(model.question)")
    }
    
    func testCorrectAmswer() {
        let model = GuessAnimalModel(testing: true)
        XCTAssert(model.correctAnswer == 1, "correctAnswer = \(model.correctAnswer)")
    }
    
 

 
}
