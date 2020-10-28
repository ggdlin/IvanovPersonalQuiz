//
//  ResultsViewController.swift
//  IvanovPersonalQuiz
//
//  Created by Admin on 28.10.2020.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var navigationBarItem: UINavigationItem!
    
    
    var answersChoosen: [Answer]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarItem.hidesBackButton = true
        let animal = animalType()
        titleLabel.text = "Вы - \(animal.rawValue) !"
        descriptionLabel.text = animal.definition
    }
    
    private func animalType() -> AnimalType {
        var dog = 0
        var cat = 0
        var rabbit = 0
        var turtle = 0
        
        for answer in answersChoosen {
            switch answer.type {
            
            case .dog:
                dog += 1
            case .cat:
                cat += 1
            case .rabbit:
                rabbit += 1
            case .turtle:
                turtle += 1
            }
        }
        
        if dog > cat && dog > rabbit && dog > turtle {
            return .dog
        } else if cat > rabbit && cat > turtle {
            return .cat
        } else if rabbit > turtle {
            return .rabbit
        } else {
            return .turtle
        }
        
    }

}
