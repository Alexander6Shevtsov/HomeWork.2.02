//
//  ViewController.swift
//  HomeWork.2.02
//
//  Created by Alexander Shevtsov on 13.03.2024.
//

import UIKit

final class TrafficLightController: UIViewController {
    
    @IBOutlet var redLight UIView!
    @IBOutlet var yellowLight UIView!
    @IBOutlet var greenLight UIView!
    
    @IBOutlet var startButton: UIButton!
    
   
    
    // состояние светофора
    var currentLightState = TrafficLightState.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        // Скругление углов у кнопки
        startButton.layer.cornerRadius = 10
    }
    
    // Обработчик нажатия на кнопку "START" и переключение состояний светофора
    @IBAction func startButtonTapped(_ sender: UIButton) {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
    }
    
    enum TrafficLightState {
        case red, yellow, green
    }
    
    switch currentLightState {
    case .red:
        redLight.alpha = 1.0
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        currentLightState = .yellow
    case .yellow:
        redLight.alpha = 0.3
        yellowLight.alpha = 1.0
        greenLight.alpha = 0.3
        currentLightState = .green
    case .green:
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 1.0
        currentLightState = .red
    }
    
}



