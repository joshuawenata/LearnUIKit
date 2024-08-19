//
//  ViewController.swift
//  LearnUIKitV2
//
//  Created by Joshua Wenata Sunarto on 15/08/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myView: UIView!
    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        myView.backgroundColor = .red
//        myButton.setTitle("Tap Me!", for: .normal)
    }

    @IBAction func didTapButton() {
        print("Button was tapped!")
    }

}

