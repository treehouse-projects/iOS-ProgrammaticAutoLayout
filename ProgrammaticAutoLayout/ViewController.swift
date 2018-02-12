//
//  ViewController.swift
//  ProgrammaticAutoLayout
//
//  Created by Pasan Premaratne on 2/12/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let redView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        redView.backgroundColor = .red
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        
        NSLayoutConstraint.activate([
            redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redView.widthAnchor.constraint(equalToConstant: 200.0),
            redView.heightAnchor.constraint(equalToConstant: 100.0),
            redView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50.0)
        ])
    }
}

