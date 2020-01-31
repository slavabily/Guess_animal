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
        var model = ProjectDataSource()
        model.prepareQuestion()
        XCTAssert(model.count == 6, "model.count = \(model.count)")
    }
    
    func testAnimalNamesFetched() {
        var model = ProjectDataSource()
        XCTAssert(model.prepareQuestion().isEmpty == false, "There are no any question prepared.")
    }

 
}
