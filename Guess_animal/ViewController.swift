//
//  ViewController.swift
//  Guess_animal
//
//  Created by slava bily on 29/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController, Storyboarded {
    
    var animals = [String]()
    
    var count: Int {
        return animals.count
    }
    
    var score = 0
    
    var button1Name: String!
    var button2Name: String!
    var button3Name: String!
    
    
    var showMainViewAction: ((_ button1Name: String, _ button2Name: String, _ buttonName: String, _ score: Int) -> Void)?
    
    var correctAnserNumber = 0
    var question = String()
    
    override func loadView() {
        prepareQuestion()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareAnswer()
        
        title = question
        
        navigationItem.largeTitleDisplayMode = .never
        
    }
    
    func prepareQuestion() {
           
           animals = ["elephant", "dolphin", "bear", "crocodile", "deer", "wolf"]
           
           animals = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: animals) as! [String]
           
           button1Name = animals[0]
           button2Name = animals[1]
           button3Name = animals[2]
       }
    
    func prepareAnswer() {
        let buttonsNames = [button1Name, button2Name, button3Name]
        
        let randomChoise = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
               
        question = buttonsNames[randomChoise]!
        
        correctAnserNumber = buttonsNames.firstIndex(of: question)!
        
        showMainViewAction!(button1Name, button2Name, button3Name, score)

    }
    
    func buttonAction(_ sender: UIButton) {
        
        var title: String
        
        if sender.tag == correctAnserNumber {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: reloadMainView(action:)))
        present(ac, animated: true)
        
    }
     
    func reloadMainView(action: UIAlertAction) {
        prepareQuestion()
        prepareAnswer()

        title = question
    }
}

