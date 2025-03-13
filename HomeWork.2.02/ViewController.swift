//
//  ViewController.swift
//  HomeWork.2.02
//
//  Created by Alexander Shevtsov on 13.03.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
   private var currentLightState: TrafficLightState = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }

    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
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
}

// MARK: - CurrentLight     расширения нужно подписывать!
// расширение позволяет расширять функционал любого типа данных не имея доступа
extension ViewController { // расширяем наш класс, add приватный enum
    private enum TrafficLightState { // состояние светофора
        case red, yellow, green
    }
}
