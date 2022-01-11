//
//  ViewController.swift
//  TrafficLights
//
//  Created by Юлия Алдохина on 10/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    
        
    }

//    @IBAction func getStartButton() {
//
//        startButton.setTitle("NEXT", for: .normal)
//
//        if redView.alpha == 0.3 {
//            yellowView.alpha = 1
//        }
//
//    }

}
