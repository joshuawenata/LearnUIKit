//
//  SecondViewController.swift
//  LearnUIKit
//
//  Created by Joshua Wenata Sunarto on 14/08/24.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground

        let label = UILabel()
        label.text = "Second Page"
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
        let myView = UIView(frame: rect)
        myView.backgroundColor = UIColor.red

        // Add the view to the superview
        self.view.addSubview(myView)

        // Disable autoresizing mask translation
        myView.translatesAutoresizingMaskIntoConstraints = false

        // Set constraints to center the view
        NSLayoutConstraint.activate([
            myView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            myView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 100),
            myView.widthAnchor.constraint(equalToConstant: 100), // Set width constraint
            myView.heightAnchor.constraint(equalToConstant: 100) // Set height constraint
        ])

        
    }

}
