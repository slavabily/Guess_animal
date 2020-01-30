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
        showMainViewAction!(dataSource)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        title = "Guess the animal name"
     }
    
    func buttonAction(_ sender: UIButton) {
        
    }


}

