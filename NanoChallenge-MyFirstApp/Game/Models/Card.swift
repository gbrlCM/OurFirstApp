//
//  Card.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Anna Carolina Costa Andrade on 02/06/21.
//

import Foundation
import UIKit

struct Card {
    var subject: Subject
    var isCorrect: Bool
    var cardImage: String
    var subjectExplanation: String
    var userGetItRight: Bool
    
    let wrongExplanation: String
    let rightExplanation: String
    
    var answerExplanation: String {
        if userGetItRight {
            return rightExplanation
        } else {
            return wrongExplanation
        }
    }
}
