//
//  ProjectDataSource.swift
//  Guess_animal
//
//  Created by slava bily on 29/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import Foundation
import GameplayKit

struct ProjectDataSource {
    
    var animals = [String]()
    
    var count: Int {
        return animals.count
    }
    
    var score = 0
    
    var button1Name: String!
    var button2Name: String!
    var button3Name: String!
    
    mutating func prepareQuestion() {
        
        animals = ["elephant", "dolphin", "bear", "crocodile", "deer", "wolf"]
        
        animals = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: animals) as! [String]
        
        button1Name = animals[0]
        button2Name = animals[1]
        button3Name = animals[2]
    }
    
}
