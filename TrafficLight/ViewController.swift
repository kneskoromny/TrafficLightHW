//
//  ViewController.swift
//  TrafficLight
//
//  Created by Кирилл Нескоромный on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    
    @IBOutlet weak var yellowLightView: UIView!
    
    @IBOutlet weak var greenLightView: UIView!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    enum Lights {
        case noSignal
        case redSignal
        case yellowSignal
        case greenSignal
    }
    
    var currentLight = Lights.noSignal
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 60
        redLightView.alpha = 0.3
        
        yellowLightView.layer.cornerRadius = 60
        yellowLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = 60
        greenLightView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        
    }


    @IBAction func startButtonPressed() {
        
        startButton.setTitle("NEXT!", for: .normal)
        
        switch currentLight {
            
        case .redSignal:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            currentLight = .yellowSignal
            
        case .yellowSignal:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            currentLight = .greenSignal
            
        case .greenSignal:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            currentLight = .redSignal
        
        default:
            redLightView.alpha = 1
            currentLight = .redSignal
            
        }
        
}
    
    
        
    
}

