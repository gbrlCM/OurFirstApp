//
//  GameService.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 16/06/21.
//

import Foundation

class GameService {
    
    private var datasource: CardsDatasource
    private var cardCount: Int
    private(set) var actualCard: Card?
    private(set) var cards: [Card]
    
    public var numberOfCards: Int {
        cards.count
    }
    
    init(datasource: CardsDatasource) {
        self.cardCount = 0
        self.actualCard = nil
        self.datasource = datasource
        self.cards = datasource.fetch()
    }
    
    func initialize() {
        cardCount = 0
        cards = datasource.fetch()
        actualCard = cards[cardCount]
    }
    
    func userIsCorrect(comparedTo correctAnswer: Bool) -> Bool {
        guard let card = actualCard else { return false }
        return card.isCorrect == correctAnswer
    }
    
    func handleAnswer(_ correctAnswer: Bool) {
        cards[cardCount].userGetItRight = userIsCorrect(comparedTo: correctAnswer)
    }
    
    func goToNextCard(endGameAction: @escaping () -> Void,  uiUpdates: @escaping (_ card: Card, _ progress: String) -> Void) {
        cardCount += 1
        //countLabel.text = "\(cardCount+1)/\(cards.count)"
        
        guard cardCount < cards.count else {
            endGameAction()
            return
        }
        
        actualCard = cards[cardCount]
        
        if let actualCard = self.actualCard {
//            cardImageView.image = UIImage(named: actualCard.cardImage)
//            titleLabel.text = actualCard.subject.rawValue
            uiUpdates(actualCard, "\(cardCount+1)/\(cards.count)")
        }
    }
}
