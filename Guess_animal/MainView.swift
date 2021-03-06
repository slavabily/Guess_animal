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
    
    init(button1Name: String, button2Name: String, button3Name: String, score: Int, buttonAction: @escaping (_ sender: UIButton) -> Void) {
        super.init(frame: .zero)
        backgroundColor = .white
        
        self.buttonAction = buttonAction
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])
        
        button1.tag = 0
        button2.tag = 1
        button3.tag = 2
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        scoreLabel.textAlignment = .center
        scoreLabel.attributedText = NSAttributedString(string: "Score: 0", attributes: [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .largeTitle)])
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        button1.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button3.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        button1.setImage(UIImage(named: button1Name), for: .normal)
        button2.setImage(UIImage(named: button2Name), for: .normal)
        button3.setImage(UIImage(named: button3Name), for: .normal)
        
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)
        stackView.addArrangedSubview(scoreLabel)
        
        stackView.setCustomSpacing(30, after: button1)
        stackView.setCustomSpacing(30, after: button2)
        stackView.distribution = .fillEqually
        
        scoreLabel.attributedText = NSAttributedString(string: "Score: \(score)", attributes: [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .largeTitle)])
               
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        
        buttonAction?(sender)
    }

}
