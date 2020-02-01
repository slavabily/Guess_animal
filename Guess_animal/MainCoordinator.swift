//
//  MainCoordinator.swift
//  Guess_animal
//
//  Created by slava bily on 29/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var children = [Coordinator]()
    let vc = ViewController.instantiate()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
         
        vc.showMainViewAction = showMainView(_:_:_:_:)
        navigationController.pushViewController(vc, animated: false)
        
    }
    
    func showMainView(_ button1Name: String, _ button2Name: String, _ button3Name: String, _ score: Int) {
        vc.view = MainView(button1Name: button1Name, button2Name: button2Name, button3Name: button3Name, score: score, buttonAction: {[unowned vc] (b) in
            vc.buttonAction(b)
        })
    }
}
