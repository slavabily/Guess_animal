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
    
    var model = GuessAnimalModel()
    
    var score = 0
    
    var showMainViewAction: ((_ button1Name: String, _ button2Name: String, _ buttonName: String, _ score: Int) -> Void)?
    
    var correctAnswer = Int()
    var question = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareAnswer()
        
        title = question
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    func prepareAnswer() {
        
        question = model.question
        
        correctAnswer = model.correctAnswer
        
        let button1Name = model.buttonNames[0]
        let button2Name = model.buttonNames[1]
        let button3Name = model.buttonNames[2]
        
        showMainViewAction!(button1Name, button2Name, button3Name, score)
    }
    
    func buttonAction(_ sender: UIButton) {
        
        var title: String
        
        if sender.tag == correctAnswer {
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
        
        model = GuessAnimalModel()
        prepareAnswer()

        title = question
    }
}

