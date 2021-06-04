//
//  Subjects.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 02/06/21.
//

import Foundation
import UIKit

enum Subject: String, CaseIterable {
    case differentFonts = "Font Usage"
    case tracking = "Tracking"
    case color = "Color"
    case size = "Size"
    case leading = "Leading"
    case kerning = "Kerning"
    case mixedWithColor = "Mixing with color"
    case centeringText = "Allignment"
    case hierachyAndConstrast = "Hierarchy"
    
    func wrongCard() -> Card {
        switch self {
        case .centeringText:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "centering_W"),
                subjectExplanation: "Avoid centring text universally, and embrace the asymmetry of a design which features ragged lines, or use justified text where you need a solid block of copy.",
                userGetItRight: false)
            
        case .color:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "color_W"),
                subjectExplanation: "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!",
                userGetItRight: false)
            
        case .differentFonts:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "differentFonts_W"),
                subjectExplanation: "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other.",
                userGetItRight: false)
            
        case .hierachyAndConstrast:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "hierarchy_W"),
                subjectExplanation: "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way.",
                userGetItRight: false)
            
        case .kerning:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "kerning_W"),
                subjectExplanation: "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability.",
                userGetItRight: false)
            
        case .leading:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "leading_W"),
                subjectExplanation: "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines.",
                userGetItRight: false)
            
        case .mixedWithColor:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "mixedWithColors_W"),
                subjectExplanation: "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together.",
                userGetItRight: false)
            
        case .size:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "size_W"),
                subjectExplanation: "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read.",
                userGetItRight: false)
            
        case .tracking:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "tracking_W"),
                subjectExplanation: "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content.",
                userGetItRight: false)
        }
    }
    
    func correctCard() -> Card {
        switch self {
        case .centeringText:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "centering_C"),
                subjectExplanation: "Avoid centring text universally, and embrace the asymmetry of a design which features ragged lines, or use justified text where you need a solid block of copy.",
                userGetItRight: false)
            
        case .color:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "color_C"),
                subjectExplanation: "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!",
                userGetItRight: false)
            
        case .differentFonts:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "differentFonts_C"),
                subjectExplanation: "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other.",
                userGetItRight: false)
            
        case .hierachyAndConstrast:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "hierarchy_C"),
                subjectExplanation: "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way.",
                userGetItRight: false)
            
        case .kerning:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "kerning_C"),
                subjectExplanation: "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability.",
                userGetItRight: false)
            
        case .leading:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "leading_C"),
                subjectExplanation: "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines.",
                userGetItRight: false)
            
        case .mixedWithColor:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "mixedWithColors_C"),
                subjectExplanation: "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together.",
                userGetItRight: false)
            
        case .size:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "size_C"),
                subjectExplanation: "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read.",
                userGetItRight: false)
            
        case .tracking:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "tracking_C"),
                subjectExplanation: "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content.",
                userGetItRight: false)
        }
    }
}
