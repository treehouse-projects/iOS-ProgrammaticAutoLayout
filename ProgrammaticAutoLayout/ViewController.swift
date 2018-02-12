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
        
        let horizontalCenterConstraint = NSLayoutConstraint(item: redView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let redViewWidthConstraint = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200.0)
        let redViewHeightConstraint = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100.0)
        let redViewBottomSpaceConstraint = NSLayoutConstraint(item: redView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -50)
        
        NSLayoutConstraint.activate([
            horizontalCenterConstraint,
            redViewWidthConstraint,
            redViewHeightConstraint,
            redViewBottomSpaceConstraint
        ])
    }
}

