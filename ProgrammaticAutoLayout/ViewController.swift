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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        
        let horizontalCenterConstraint = NSLayoutConstraint(item: redView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        NSLayoutConstraint.activate([
            horizontalCenterConstraint
        ])
    }
}

