//
//  ViewController.swift
//  TrafficLights
//
//  Created by Irunchik on 23.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var lightsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius =
        75
        greenView.layer.cornerRadius = 75
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }

    
    @IBAction func lightsButtonTapped() {
        lightsButton.setTitle("NEXT", for: .normal)
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        } else {
            greenView.alpha = 1
        }
        
        
    }
    
    
}

