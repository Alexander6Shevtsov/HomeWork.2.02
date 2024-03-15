//
//  ViewController.swift
//  HomeWork.2.02
//
//  Created by Alexander Shevtsov on 13.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    // Объявляем IBOutlet'ы для светофорных сигналов и кнопки
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    // Перечисление для состояний светофора
    enum TrafficLightState {
        case red, yellow, green
    }
    
    // Текущее состояние светофора
    var currentLightState: TrafficLightState = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Настройка начального состояния светофора (выключенные сигналы)
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
        
        // Переключение состояния светофора
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


