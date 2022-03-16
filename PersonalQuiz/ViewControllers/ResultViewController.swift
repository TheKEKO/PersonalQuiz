//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Aleksandr F. on 15.03.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var textLabel: UILabel!
    
    var answersChosen: [Answer]!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        result()
    }
    
    // MARK: - Private Methods
    private func result() {
        var resultAnimalType: [Animal: Int] = [:]
        let animalsType = answersChosen.map { $0.animal }
        
        for animal in animalsType {
            if let animalCount = resultAnimalType[animal] {
                resultAnimalType.updateValue(animalCount + 1, forKey: animal)
            } else {
                resultAnimalType[animal] = 1
            }
        }
        
        let sortedAnswerAndAnimal = resultAnimalType.sorted { $0.value > $1.value }
        guard let resultAnswer = sortedAnswerAndAnimal.first?.key else { return }
        
        resultLabel.text = "Вы - \(resultAnswer.rawValue)!"
        textLabel.text = "\(resultAnswer.definition)"
    }
}
    
    
    


