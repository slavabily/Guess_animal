//
//  MainView.swift
//  Guess_animal
//
//  Created by slava bily on 30/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import UIKit

class MainView: UIView {

    var buttonAction: ((_ sender: UIButton) -> Void)?
    
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    
    let scoreLabel = UILabel()
    
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    init(dataSourse: ProjectDataSource, buttonAction: @escaping (_ sender: UIButton) -> Void) {
        super.init(frame: .zero)
        backgroundColor = .white
        
        self.buttonAction = buttonAction
    }
    
   
    

}
