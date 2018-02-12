//
//  VisualFormatLanguage.swift
//  ProgrammaticAutoLayout
//
//  Created by Pasan Premaratne on 2/12/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class VisualFormatExampleController: UIViewController {
    
    let redView = UIView()
    let greenView = UIView()
    let blueView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
        
        // Constraint Code
        let views: [String: Any] = [
            "redView": redView,
            "greenView": greenView,
            "blueView": blueView,
        ]
        
        let metrics: [String: Any] = [
            "redViewWidth": 200
        ]
        
        NSLayoutConstraint.constraints(withVisualFormat: "H:[redView(200)]", options: [], metrics: metrics, views: views).map { $0.isActive = true }
    }
}

