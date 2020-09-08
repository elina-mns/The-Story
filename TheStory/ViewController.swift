//
//  ViewController.swift
//  TheStory
//
//  Created by Elina Mansurova on 2020-09-08.
//  Copyright © 2020 Elina Mansurova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        roundCorners(for: buttonOne)
        roundCorners(for: buttonTwo)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Start Over", style: .plain, target: self, action: #selector(ViewController.startOver))
    }
    
    func roundCorners(for button: UIButton) {
        button.backgroundColor = .clear
        button.layer.cornerRadius = 13
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
    }
    
    @objc func startOver() {
    if let navigationController = self.navigationController {
        navigationController.popToRootViewController(animated: true)
    }
}
}

