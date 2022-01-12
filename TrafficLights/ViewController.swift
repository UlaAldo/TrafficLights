//
//  ViewController.swift
//  TrafficLights
//
//  Created by Юлия Алдохина on 10/01/22.
//

import UIKit

enum CircleColors {
    case red
    case yellow
    case green
}

var colors: CircleColors = .red

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = redView.frame.width/2
        yellowView.layer.cornerRadius = yellowView.frame.size.width/2
        greenView.layer.cornerRadius = greenView.frame.size.width/2
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }

    @IBAction func getStartButton() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch colors {
        case .red:
            greenView.alpha = 0.3
            redView.alpha = 1
            colors = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            colors = .green
        case .green:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            colors = .red
        }
        
       
    }

}

