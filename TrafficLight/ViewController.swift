//
//  ViewController.swift
//  TrafficLight
//
//  Created by Кирилл Нескоромный on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
// MARK: - IB Outlets
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var actionHintLabel: UILabel!
    
//    MARK: - Private Properties
    private enum Lights {
        case noSignal
        case redSignal
        case yellowSignal
        case greenSignal
    }
    private var currentLight = Lights.noSignal
    
//    MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sleep(2)
        redLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
        startButton.layer.cornerRadius = 10
    }

// MARK: - IB Actions
    @IBAction func startButtonPressed() {
        
        startButton.setTitle("NEXT!", for: .normal)
        actionHintLabel.isHidden = false
        
        switch currentLight {
        case .redSignal:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            currentLight = .yellowSignal
            actionHintLabel.text = "ready"
            actionHintLabel.textColor = .yellow
            
        case .yellowSignal:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            currentLight = .greenSignal
            actionHintLabel.text = "go"
            actionHintLabel.textColor = .green
            
        case .greenSignal:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            currentLight = .redSignal
            actionHintLabel.text = "stop"
            actionHintLabel.textColor = .red
            
        default:
            redLightView.alpha = 1
            currentLight = .redSignal
            actionHintLabel.text = "stop"
            actionHintLabel.textColor = .red
            
        }
        
}
    
    
        
    
}

