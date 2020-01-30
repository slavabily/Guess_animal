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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func buttonAction(_ sender: UIButton) {
        
    }


}

