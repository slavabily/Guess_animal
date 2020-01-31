//
//  ViewController.swift
//  Guess_animal
//
//  Created by slava bily on 29/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    var dataSource = ProjectDataSource()
    var showMainViewAction: ((ProjectDataSource) -> Void)?
    
    override func loadView() {
        dataSource.prepareQuestion()
        title = dataSource.question.uppercased()

        showMainViewAction!(dataSource)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
 
        
     }
    
    func buttonAction(_ sender: UIButton) {
        
        var title: String
        
        if sender.tag == dataSource.correctAnswer {
            title = "Correct"
            dataSource.score += 1
        } else {
            title = "Wrong"
            dataSource.score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "Your score is \(dataSource.score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: reloadMainView(action:)))
        present(ac, animated: true)
        
    }
     
    func reloadMainView(action: UIAlertAction) {
        dataSource.prepareQuestion()
        showMainViewAction?(dataSource)
    }


}

