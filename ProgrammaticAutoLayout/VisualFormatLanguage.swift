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
    let orangeView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        orangeView.backgroundColor = .orange
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
        
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(orangeView)
        
        // Constraint Code
        let views: [String: Any] = [
            "redView": redView,
            "greenView": greenView,
            "blueView": blueView,
            "orangeView": orangeView
        ]
        
        let metrics: [String: Any] = [
            "viewWidth": 100,
            "viewHeight": 100,
            "customVerticalSpacing": 50,
            "customHorizontalSpacing": 50
        ]
        
        NSLayoutConstraint.constraints(withVisualFormat: "H:|-customHorizontalSpacing-[redView(viewWidth)]-customHorizontalSpacing-[greenView(viewWidth)]", options: [], metrics: metrics, views: views).map { $0.isActive = true }
        
        NSLayoutConstraint.constraints(withVisualFormat: "V:|-customVerticalSpacing-[redView(viewHeight)]-customVerticalSpacing-[blueView(redView)]", options: [], metrics: metrics, views: views).map { $0.isActive = true }
        
        NSLayoutConstraint.constraints(withVisualFormat: "V:|-customVerticalSpacing-[greenView(redView)]-customVerticalSpacing-[orangeView(redView)]", options: [], metrics: metrics, views: views).map { $0.isActive = true }
        
        NSLayoutConstraint.constraints(withVisualFormat: "H:|-customHorizontalSpacing-[blueView(redView)]-customHorizontalSpacing-[orangeView(blueView)]", options: [], metrics: metrics, views: views).map { $0.isActive = true }
    }
}

