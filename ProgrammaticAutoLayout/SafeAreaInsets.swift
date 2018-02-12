//
//  SafeAreaInsets.swift
//  ProgrammaticAutoLayout
//
//  Created by Pasan Premaratne on 2/12/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class SafeAreaInsetsController: UIViewController {
    let customView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.backgroundColor = .red
        view.backgroundColor = .yellow
        
        let insets = UIEdgeInsets(top: 50, left: 50, bottom: 0, right: 0)
        additionalSafeAreaInsets = insets
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        customView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customView)
        
        NSLayoutConstraint.activate([
            customView.widthAnchor.constraint(equalToConstant: 200),
            customView.heightAnchor.constraint(equalToConstant: 200),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
}
