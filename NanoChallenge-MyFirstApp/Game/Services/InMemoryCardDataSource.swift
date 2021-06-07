//
//  InMemoryCardDataSource.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 07/06/21.
//

import Foundation

struct InMemoryCardDatasource: CardsDatasource {
    
    private struct Cards {
        let right: Card
        let wrong: Card
        
        func choose() -> Card {
            let shouldChooseRight = Bool.random()
            
            if shouldChooseRight {
                return right
            } else {
                return wrong
            }
        }
    }
    
    private let cards: [Cards] = [
        Cards(right:
                Card(
                    subject: .centeringText,
                    isCorrect: true,
                    cardImage: "centering_C",
                    subjectExplanation: "Avoid centring text universally, and embrace the asymmetry of a design which features ragged lines, or use justified text where you need a solid block of copy.",
                    userGetItRight: false,
                    wrongExplanation: "One of the first things you'll often hear a designer say is that you should never centre text. This is a critical error as the symmetry is both unsettling and difficult to read – especially in longer passages of text. Nah, this deffinitely wasn't the best choice, Typoop Writer...",
                    rightExplanation: "Avoid centring text universally, and embrace the asymmetry of a design which features ragged lines, or use justified text where you need a solid block of copy."
                ),
              wrong:
                Card(
                    subject: .centeringText,
                    isCorrect: false,
                    cardImage: "centering_W",
                    subjectExplanation: "Avoid centring text universally, and embrace the asymmetry of a design which features ragged lines, or use justified text where you need a solid block of copy.",
                    userGetItRight: false,
                    wrongExplanation: "One of the first things you'll often hear a designer say is that you should never centre text. This is a critical error as the symmetry is both unsettling and difficult to read – especially in longer passages of text. Nah, this deffinitely wasn't the best choice, Typoop Writer...",
                    rightExplanation: "Avoid centring text universally, and embrace the asymmetry of a design which features ragged lines, or use justified text where you need a solid block of copy."
                )
        ),
        Cards(right:
                Card(
                    subject: .color,
                    isCorrect: true,
                    cardImage: "color_C",
                    subjectExplanation: "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!",
                    userGetItRight: false,
                    wrongExplanation: "Just because you can do something, it doesn't mean that you should. It's ok if you like light blue color, but it doesn't mean that you should use it with a white background color. Your message will not be readble because no one can distinguish the letters and the background. Choose your fonts colors with wisdom to make sure everyone can read it, Typoop Writer!",
                    rightExplanation: "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!"
                ),
              wrong:
                Card(
                    subject: .color,
                    isCorrect: false,
                    cardImage: "color_W",
                    subjectExplanation: "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!",
                    userGetItRight: false,
                    wrongExplanation: "Just because you can do something, it doesn't mean that you should. It's ok if you like light blue color, but it doesn't mean that you should use it with a white background color. Your message will not be readble because no one can distinguish the letters and the background. Choose your fonts colors with wisdom to make sure everyone can read it, Typoop Writer!",
                    rightExplanation: "When you use color, remember to makes it easier to discern the underlying tonality of different colors in your text and background!"
                )
        ),
        Cards(right:
                Card(
                    subject: .differentFonts,
                    isCorrect: true,
                    cardImage: "differentFonts_C",
                    subjectExplanation: "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other.",
                    userGetItRight: false,
                    wrongExplanation: "Looks like you just kind of went on autopilot and didn’t see the need to distinguish styles using the standard methods. You just plodded along, dragging yourself to the finish line. Maybe it was the double cheeseburger and fries for lunch with these typefaces choices. Are you having lunch or just trying to put all the typefaces in your text? Use fonts that work well together, Typoop Writer!",
                    rightExplanation: "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other."
                ),
              wrong:
                Card(
                    subject: .differentFonts,
                    isCorrect: false,
                    cardImage: "differentFonts_W",
                    subjectExplanation: "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other.",
                    userGetItRight: false,
                    wrongExplanation: "Looks like you just kind of went on autopilot and didn’t see the need to distinguish styles using the standard methods. You just plodded along, dragging yourself to the finish line. Maybe it was the double cheeseburger and fries for lunch with these typefaces choices. Are you having lunch or just trying to put all the typefaces in your text? Use fonts that work well together, Typoop Writer!",
                    rightExplanation: "As a general principle, it's best practice to limit a piece of work to have a maximum of three different fonts. You should also choose fonts that complement each other."
                )
        ),
        Cards(right:
                Card(
                    subject: .hierachyAndConstrast,
                    isCorrect: true,
                    cardImage: "hierarchy_C",
                    subjectExplanation: "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way.",
                    userGetItRight: false,
                    wrongExplanation: "Choose a contrast font that is both subordinate to your heading font, and that falls in line with its mission. Avoid font personality conflicts by  controlling where the eye of the reader goes with the right use of hierarchy. A good pair of contrast fonts help direct the reader in the flow of the context, not against it. Go fix it and put contrast in your text, Typoop Writer!",
                    rightExplanation: "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way."
                ),
              wrong:
                Card(
                    subject: .hierachyAndConstrast,
                    isCorrect: false,
                    cardImage: "hierarchy_W",
                    subjectExplanation: "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way.",
                    userGetItRight: false,
                    wrongExplanation: "Choose a contrast font that is both subordinate to your heading font, and that falls in line with its mission. Avoid font personality conflicts by  controlling where the eye of the reader goes with the right use of hierarchy. A good pair of contrast fonts help direct the reader in the flow of the context, not against it. Go fix it and put contrast in your text, Typoop Writer!",
                    rightExplanation: "Typographic hierarchy it's important to clarifies your content. Be sure to think about typographic color and create contrast and variety in a way that visually structures the content in a beautiful way."
                )
        ),
        Cards(right:
                Card(
                    subject: .kerning,
                    isCorrect: true,
                    cardImage: "kerning_C",
                    subjectExplanation: "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability.",
                    userGetItRight: false,
                    wrongExplanation: "In this sign for a massage therapist, the space between the “E” and the “R” is way too big, leading to an unintended ambiguity about what is actually being offered, and shows that these kinds of typography errors can create serious misunderstandings.  What should it be ”Massage The Rapist”? Maybe you will not have a lot of clients if you were a therapist with this tipography mistake...",
                    rightExplanation: "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability."
                ),
              wrong:
                Card(
                    subject: .kerning,
                    isCorrect: false,
                    cardImage: "kerning_W",
                    subjectExplanation: "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability.",
                    userGetItRight: false,
                    wrongExplanation: "In this sign for a massage therapist, the space between the “E” and the “R” is way too big, leading to an unintended ambiguity about what is actually being offered, and shows that these kinds of typography errors can create serious misunderstandings.  What should it be ”Massage The Rapist”? Maybe you will not have a lot of clients if you were a therapist with this tipography mistake...",
                    rightExplanation: "kerning is the space between a letter pair in a word. It functions to reduce or add the space between a pair of letters in a word. Kerning is best used when dealing with logos, full capital letters, and headlines, as it helps improve readability."
                )
        ),
        Cards(right:
                Card(
                    subject: .leading,
                    isCorrect: true,
                    cardImage: "leading_C",
                    subjectExplanation: "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines.",
                    userGetItRight: false,
                    wrongExplanation: "Maybe you have just a little space to write and made your leading smaller than the regular one. Good idea to safe space, but now no one can read it. Go fix your leading space between the lines so everyone can read it, Typoop Writer!",
                    rightExplanation: "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines."
                ),
              wrong:
                Card(
                    subject: .leading,
                    isCorrect: false,
                    cardImage: "leading_W",
                    subjectExplanation: "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines.",
                    userGetItRight: false,
                    wrongExplanation: "Maybe you have just a little space to write and made your leading smaller than the regular one. Good idea to safe space, but now no one can read it. Go fix your leading space between the lines so everyone can read it, Typoop Writer!",
                    rightExplanation: "Leading is the space between two lines of type, and is named after the strips of lead used to ensure an adequate gap between the lines."
                )
        ),
        Cards(right:
                Card(
                    subject: .mixedWithColor,
                    isCorrect: true,
                    cardImage: "mixedWithColors_C",
                    subjectExplanation: "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together.",
                    userGetItRight: false,
                    wrongExplanation: """
                     You thought the typeface was cool at first with the yellow circle at the text, right? But after it was published, not so much. When content matters (when does it not?), play it safe and make it readable. The yellow color it's not so strong, so it looks like ”Hell Sunshine". It was not the best idea, Typoop Writer...
                     """,
                    rightExplanation: "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together."
                ),
              wrong:
                Card(
                    subject: .mixedWithColor,
                    isCorrect: false,
                    cardImage: "mixedWithColors_W",
                    subjectExplanation: "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together.",
                    userGetItRight: false,
                    wrongExplanation: """
                     You thought the typeface was cool at first with the yellow circle at the text, right? But after it was published, not so much. When content matters (when does it not?), play it safe and make it readable. The yellow color it's not so strong, so it looks like ”Hell Sunshine". It was not the best idea, Typoop Writer...
                     """,
                    rightExplanation: "Printing anything less than 50% tint on white background makes the design look less distinct and hard to read. The words become less visible as they get lost in the background. Good practice is to pay attention to how one color interacts with one another. You don’t want to place clashing colors together."
                )
        ),
        Cards(right:
                Card(
                    subject: .size,
                    isCorrect: true,
                    cardImage: "size_C",
                    subjectExplanation: "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read.",
                    userGetItRight: false,
                    wrongExplanation: "You planned poorly and tried to cram too much text into an area that was poorly thought out. Will reducing font size make it work? Well, you crammed it in there alright. But now no one can read it. Go fix your font size so everyone can read it, Typoop Writer!",
                    rightExplanation: "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read."
                ),
              wrong:
                Card(
                    subject: .size,
                    isCorrect: false,
                    cardImage: "size_W",
                    subjectExplanation: "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read.",
                    userGetItRight: false,
                    wrongExplanation: "You planned poorly and tried to cram too much text into an area that was poorly thought out. Will reducing font size make it work? Well, you crammed it in there alright. But now no one can read it. Go fix your font size so everyone can read it, Typoop Writer!",
                    rightExplanation: "Font size might seem as insignificant and something that is easily pulled off, but there are actual guidelines when it comes to it. You should pay attention on your font size so it will be appropriate for your project. It's important to make everything legible and easily read."
                )
        ),
        Cards(right:
                Card(
                    subject: .tracking,
                    isCorrect: true,
                    cardImage: "tracking_C",
                    subjectExplanation: "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content.",
                    userGetItRight: false,
                    wrongExplanation: "ypoop writer, I just can't distinguished the letters in your card text! Can you read it to me, please? Letters were too close from eachother just because you used a lot of negative tracking in this text! Go put some positive tracking so I can read it, please. Thank you.",
                    rightExplanation: "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content."
                ),
              wrong:
                Card(
                    subject: .tracking,
                    isCorrect: false,
                    cardImage: "tracking_W",
                    subjectExplanation: "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content.",
                    userGetItRight: false,
                    wrongExplanation: "ypoop writer, I just can't distinguished the letters in your card text! Can you read it to me, please? Letters were too close from eachother just because you used a lot of negative tracking in this text! Go put some positive tracking so I can read it, please. Thank you.",
                    rightExplanation: "Tracking is the spacing between the letters.  The difference between tracking and kerning is that tracking has spacing applied to all letters. It's important to ensure the readability of a content."
                )
        )
    ]
    
    func fetch() -> [Card] {
        return cards.map {
            $0.choose()
        }
    }
}
