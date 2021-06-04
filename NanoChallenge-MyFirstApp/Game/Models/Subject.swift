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
                answerExplanation: "One of the first things you'll often hear a designer say is that you should never centre text. This is a critical error as the symmetry is both unsettling and difficult to read – especially in longer passages of text. Nah, this deffinitely wasn't the best choice, Typoop Writer...",
                userGetItRight: false)
            
        case .color:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "color_W"),
                subjectExplanation: "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!",
                answerExplanation: "Just because you can do something, it doesn't mean that you should. It's ok if you like light blue color, but it doesn't mean that you should use it with a white background color. Your message will not be readble because no one can distinguish the letters and the background. Choose your fonts colors with wisdom to make sure everyone can read it, Typoop Writer!",
                userGetItRight: false)
            
        case .differentFonts:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "differentFonts_W"),
                subjectExplanation: "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other.",
                answerExplanation: "Looks like you just kind of went on autopilot and didn’t see the need to distinguish styles using the standard methods. You just plodded along, dragging yourself to the finish line. Maybe it was the double cheeseburger and fries for lunch with these typefaces choices. Are you having lunch or just trying to put all the typefaces in your text? Use fonts that work well together, Typoop Writer!",
                userGetItRight: false)
            
        case .hierachyAndConstrast:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "hierarchy_W"),
                subjectExplanation: "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way.",
                answerExplanation: "Choose a contrast font that is both subordinate to your heading font, and that falls in line with its mission. Avoid font personality conflicts by  controlling where the eye of the reader goes with the right use of hierarchy. A good pair of contrast fonts help direct the reader in the flow of the context, not against it. Go fix it and put contrast in your text, Typoop Writer!",
                userGetItRight: false)
            
        case .kerning:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "kerning_W"),
                subjectExplanation: "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability.",
                answerExplanation: "In this sign for a massage therapist, the space between the “E” and the “R” is way too big, leading to an unintended ambiguity about what is actually being offered, and shows that these kinds of typography errors can create serious misunderstandings.  What should it be ”Massage The Rapist”? Maybe you will not have a lot of clients if you were a therapist with this tipography mistake...",
                userGetItRight: false)
            
        case .leading:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "leading_W"),
                subjectExplanation: "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines.",
                answerExplanation: "Maybe you have just a little space to write and made your leading smaller than the regular one. Good idea to safe space, but now no one can read it. Go fix your leading space between the lines so everyone can read it, Typoop Writer! ",
                userGetItRight: false)
            
        case .mixedWithColor:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "mixedWithColors_W"),
                subjectExplanation: "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together.",
                answerExplanation: """
                    You thought the typeface was cool at first with the yellow circle at the text, right? But after it was published, not so much. When content matters (when does it not?), play it safe and make it readable. The yellow color it's not so strong, so it looks like ”Hell Sunshine". It was not the best idea, Typoop Writer...
                    """,
                userGetItRight: false)
            
        case .size:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "size_W"),
                subjectExplanation: "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read.",
                answerExplanation: "You planned poorly and tried to cram too much text into an area that was poorly thought out. Will reducing font size make it work? Well, you crammed it in there alright. But now no one can read it. Go fix your font size so everyone can read it, Typoop Writer!",
                userGetItRight: false)
            
        case .tracking:
            return Card(
                subject: self.rawValue,
                isCorrect: false,
                cardImage: UIImage(named: "tracking_W"),
                subjectExplanation: "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content.",
                answerExplanation: "Typoop writer, I just can't distinguished the letters in your card text! Can you read it to me, please? Letters were too close from eachother just because you used a lot of negative tracking in this text! Go put some positive tracking so I can read it, please. Thank you.",
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
                answerExplanation: "Avoid centring text universally, and embrace the asymmetry of a design which features ragged lines, or use justified text where you need a solid block of copy.",
                userGetItRight: false)
            
        case .color:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "color_C"),
                subjectExplanation: "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!",
                answerExplanation: "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!",
                userGetItRight: false)
            
        case .differentFonts:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "differentFonts_C"),
                subjectExplanation: "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other.",
                answerExplanation: "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other.",
                userGetItRight: false)
            
        case .hierachyAndConstrast:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "hierarchy_C"),
                subjectExplanation: "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way.",
                answerExplanation: "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way.",
                userGetItRight: false)
            
        case .kerning:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "kerning_C"),
                subjectExplanation: "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability.",
                answerExplanation: "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability.",
                userGetItRight: false)
            
        case .leading:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "leading_C"),
                subjectExplanation: "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines.",
                answerExplanation: "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines.",
                userGetItRight: false)
            
        case .mixedWithColor:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "mixedWithColors_C"),
                subjectExplanation: "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together.",
                answerExplanation: "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together.",
                userGetItRight: false)
            
        case .size:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "size_C"),
                subjectExplanation: "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read.",
                answerExplanation: "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read.",
                userGetItRight: false)
            
        case .tracking:
            return Card(
                subject: self.rawValue,
                isCorrect: true,
                cardImage: UIImage(named: "tracking_C"),
                subjectExplanation: "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content.",
                answerExplanation: "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content.",
                userGetItRight: false)
        }
    }
    
}
