//
//  LayoutGuides.swift
//  ProgrammaticAutoLayout
//
//  Created by Pasan Premaratne on 2/12/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class LayoutGuidesController: UIViewController {
    let viewA = UIView()
    let viewB = UIView()
    let viewC = UIView()
    
    let firstLayoutGuide = UILayoutGuide()
    let secondLayoutGuide = UILayoutGuide()
    let thirdLayoutGuide = UILayoutGuide()
    let fourthLayoutGuide = UILayoutGuide()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewA.backgroundColor = .green
        viewB.backgroundColor = .green
        viewC.backgroundColor = .green
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        viewA.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewA)
        
        viewB.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewB)
        
        viewC.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewC)
        
        NSLayoutConstraint.activate([
            viewA.widthAnchor.constraint(equalToConstant: 100),
            viewA.heightAnchor.constraint(equalToConstant: 100),
            viewA.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewB.widthAnchor.constraint(equalToConstant: 100),
            viewB.heightAnchor.constraint(equalToConstant: 100),
            viewB.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewC.widthAnchor.constraint(equalToConstant: 100),
            viewC.heightAnchor.constraint(equalToConstant: 100),
            viewC.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        view.addLayoutGuide(firstLayoutGuide)
        view.addLayoutGuide(secondLayoutGuide)
        view.addLayoutGuide(thirdLayoutGuide)
        view.addLayoutGuide(fourthLayoutGuide)
        
        NSLayoutConstraint.activate([
            firstLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            firstLayoutGuide.bottomAnchor.constraint(equalTo: viewA.topAnchor),
            secondLayoutGuide.topAnchor.constraint(equalTo: viewA.bottomAnchor),
            secondLayoutGuide.bottomAnchor.constraint(equalTo: viewB.topAnchor),
            thirdLayoutGuide.topAnchor.constraint(equalTo: viewB.bottomAnchor),
            thirdLayoutGuide.bottomAnchor.constraint(equalTo: viewC.topAnchor),
            fourthLayoutGuide.topAnchor.constraint(equalTo: viewC.bottomAnchor),
            fourthLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            fourthLayoutGuide.heightAnchor.constraint(equalTo: thirdLayoutGuide.heightAnchor),
            thirdLayoutGuide.heightAnchor.constraint(equalTo: secondLayoutGuide.heightAnchor),
            secondLayoutGuide.heightAnchor.constraint(equalTo: firstLayoutGuide.heightAnchor),
            firstLayoutGuide.heightAnchor.constraint(equalTo: fourthLayoutGuide.heightAnchor)
        ])
    }
}
