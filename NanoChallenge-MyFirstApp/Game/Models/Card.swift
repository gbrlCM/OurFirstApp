//
//  Card.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Anna Carolina Costa Andrade on 02/06/21.
//

import Foundation
import UIKit

struct Card {
    var subject: String
    var isCorrect: Bool
    var cardImage: UIImage?
    var subjectExplanation: String
    var answerExplanation: String
    var userGetItRight: Bool
    
    static func generateCards() -> [Card] {
        let subjects = Subject.allCases
        
        return subjects.map { subject -> Card in
            
            let rand = Int.random(in: 0...1)
            print(rand)
            if rand == 0 { return subject.correctCard() }
            else { return subject.wrongCard() }
        }
    }
}
