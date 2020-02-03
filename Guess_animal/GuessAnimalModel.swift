//
//  GuessAnimalModel.swift
//  Guess_animal
//
//  Created by slava bily on 2/2/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import Foundation
import GameplayKit

struct GuessAnimalModel {
    private var animals = ["elephant", "dolphin", "bear", "crocodile", "deer", "wolf"]
    
    var count: Int {
        return animals.count
    }
    var randomSource: GKRandomSource?
    var buttonNames: [String]
    var question: String
    var correctAnswer: Int
    
    init(testing: Bool = false) {
        if testing {
            randomSource = GKMersenneTwisterRandomSource(seed: 1)
        } else {
            randomSource = GKMersenneTwisterRandomSource()
        }
        animals = randomSource?.arrayByShufflingObjects(in: animals) as! [String]
        
        buttonNames = Array(animals[0 ... 2])
        
        let randomChoise = randomSource?.nextInt(upperBound: 3)
        
        question = buttonNames[randomChoise!]
        
        correctAnswer = buttonNames.firstIndex(of: question)!
    }
}
