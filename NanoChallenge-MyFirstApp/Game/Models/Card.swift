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
    
    var answerExplanation: String {
        guard let subject = Subject(rawValue: subject) else { return "" }
        
        var string: String = ""
        
        if userGetItRight {
            switch subject {
            case .centeringText:
                string = "Avoid centring text universally, and embrace the asymmetry of a design which features ragged lines, or use justified text where you need a solid block of copy."
            case .color:
                string = "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!"
            case .differentFonts:
                string = "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other."
            case .hierachyAndConstrast:
                string = "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way."
            case .kerning:
                string = "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability."
            case .leading:
                string = "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines."
            case .mixedWithColor:
                string = "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together."
            case .size:
                string = "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read."
            case .tracking:
                string = "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content."
            }
        }
        
        else {
            switch subject {
            case .centeringText:
                string = "One of the first things you'll often hear a designer say is that you should never centre text. This is a critical error as the symmetry is both unsettling and difficult to read – especially in longer passages of text. Nah, this deffinitely wasn't the best choice, Typoop Writer..."
            case .color:
                string = "Just because you can do something, it doesn't mean that you should. It's ok if you like light blue color, but it doesn't mean that you should use it with a white background color. Your message will not be readble because no one can distinguish the letters and the background. Choose your fonts colors with wisdom to make sure everyone can read it, Typoop Writer!"
            case .differentFonts:
                string = "Looks like you just kind of went on autopilot and didn’t see the need to distinguish styles using the standard methods. You just plodded along, dragging yourself to the finish line. Maybe it was the double cheeseburger and fries for lunch with these typefaces choices. Are you having lunch or just trying to put all the typefaces in your text? Use fonts that work well together, Typoop Writer!"
            case .hierachyAndConstrast:
                string = "Choose a contrast font that is both subordinate to your heading font, and that falls in line with its mission. Avoid font personality conflicts by  controlling where the eye of the reader goes with the right use of hierarchy. A good pair of contrast fonts help direct the reader in the flow of the context, not against it. Go fix it and put contrast in your text, Typoop Writer!"
            case .kerning:
                string = "In this sign for a massage therapist, the space between the “E” and the “R” is way too big, leading to an unintended ambiguity about what is actually being offered, and shows that these kinds of typography errors can create serious misunderstandings.  What should it be ”Massage The Rapist”? Maybe you will not have a lot of clients if you were a therapist with this tipography mistake..."
            case .leading:
                string = "Maybe you have just a little space to write and made your leading smaller than the regular one. Good idea to safe space, but now no one can read it. Go fix your leading space between the lines so everyone can read it, Typoop Writer!"
            case .mixedWithColor:
                string = """
                     You thought the typeface was cool at first with the yellow circle at the text, right? But after it was published, not so much. When content matters (when does it not?), play it safe and make it readable. The yellow color it's not so strong, so it looks like ”Hell Sunshine". It was not the best idea, Typoop Writer...
                     """
            case .size:
                string = "You planned poorly and tried to cram too much text into an area that was poorly thought out. Will reducing font size make it work? Well, you crammed it in there alright. But now no one can read it. Go fix your font size so everyone can read it, Typoop Writer!"
            case .tracking:
                string = "Typoop writer, I just can't distinguished the letters in your card text! Can you read it to me, please? Letters were too close from eachother just because you used a lot of negative tracking in this text! Go put some positive tracking so I can read it, please. Thank you."
            }
        }
        
        return string
    }
}
