//
//  ViewController.swift
//  traficLight
//
//  Created by Andrii Oliievskyi on 2021-07-07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 15
       
    }


    @IBAction func startButtonPressed() {
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 && greenLightView.alpha != 1 {
            redLightView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        } else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        }
    }
    
}


