//
//  GameViewController.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 01/06/21.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var wrongButton: UIButton!
    @IBOutlet weak var correctButton: UIButton!
    
    var cardCount: Int = 0
    var datasource: CardsDatasource = InMemoryCardDatasource()
    var actualCard: Card? = nil
    var cards = InMemoryCardDatasource().fetch()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupStyle()
        initialSetup()
        setupActions()
        // Do any additional setup after loading the view.
    }
    
    private func initialSetup() {
        actualCard = cards[cardCount]
        titleLabel.text = actualCard!.subject.rawValue
        countLabel.text = "\(cardCount+1)/\(cards.count)"
        cardImageView.image = UIImage(named: actualCard!.cardImage)
    }
    
    private func setupActions() {
        
        exitButton.addAction(.init(handler: {[weak self] _ in
            
            
            let alert = UIAlertController(title: "Are you sure?", message: "leaving the game you will lose all your progress", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Leave", style: .destructive, handler: {[weak self] action in
                guard let nvc = self?.navigationController else { return }
                nvc.popViewController(animated: true)
            }))
            
            alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: {[weak self] action in
                self?.dismiss(animated: true, completion: nil)
            }))
            
            self?.present(alert, animated: true, completion: nil)
            
        }), for: .touchUpInside)
        
        wrongButton.addAction(.init(handler: {[weak self] _ in
            self?.answerButtonAction(correctAnswer: false)
        }), for: .touchUpInside)
        
        correctButton.addAction(.init(handler: {[weak self] _ in
            self?.answerButtonAction(correctAnswer: true)
        }), for: .touchUpInside)
    }
    
    private func setupStyle(){
        wrongButton.layer.cornerRadius = wrongButton.frame.height/8
        wrongButton.clipsToBounds = true
        wrongButton.backgroundColor = .none
        wrongButton.setBackgroundColor(.typoopsRed, withAlpha: 0.2, for: .normal)
        wrongButton.setBackgroundColor(UIColor.typoopsRed.darken(by: 0.07), withAlpha: 0.2, for: .highlighted)
        wrongButton.setTitleColor(.gray, for: .highlighted)
        
        correctButton.setBackgroundColor(.typoopsGreen, withAlpha: 0.2, for: .normal)
        correctButton.setBackgroundColor(UIColor.typoopsGreen.darken(by: 0.07), withAlpha: 0.2, for: .highlighted)
        correctButton.setTitleColor(.gray, for: .highlighted)
        correctButton.clipsToBounds = true
        correctButton.layer.cornerRadius = correctButton.frame.height/8
        
        cardImageView.layer.shadowColor = UIColor.black.cgColor
        cardImageView.layer.shadowOffset = CGSize(width: 4, height: 4)
        cardImageView.clipsToBounds = false
        cardImageView.layer.shadowRadius = 6
        cardImageView.layer.shadowOpacity = 0.2
        
    }
    
    private func answerButtonAction(correctAnswer: Bool) {
        
        guard var card = actualCard else { return }
        
        if card.isCorrect == correctAnswer {
            card.userGetItRight = true
            cards[cardCount] = card
        }
        
        cardCount += 1
        countLabel.text = "\(cardCount+1)/\(cards.count)"
        
        guard cardCount < cards.count else {
            goToResultsScreen()
            return
        }
        
        actualCard = cards[cardCount]
        
        if let actualCard = self.actualCard {
            cardImageView.image = UIImage(named: actualCard.cardImage)
            titleLabel.text = actualCard.subject.rawValue
        }
    }
    
    private func goToResultsScreen() {
        
        let storyBoard = UIStoryboard(named: .gameResults)
        guard let resultsViewController = storyBoard.instantiateViewController(withIdentifier: .gameResults) as? GameResultsViewController else { return }
        resultsViewController.modalPresentationStyle = .fullScreen
        resultsViewController.cards = cards
        resultsViewController.delegate = self
        self.present(resultsViewController, animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard let destination = segue.destination as? ContentInfoViewController else { return }
        destination.titleString = cards[cardCount].subject.rawValue
        destination.bodyString = cards[cardCount].subjectExplanation
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension GameViewController: GameResultsDelegate {
    func newGame() {
        cards = datasource.fetch()
        cardCount = 0
        initialSetup()
        self.dismiss(animated: true, completion: nil)
        print("hi new game")
    }
    
    func goToHome() {
        guard let nvc = navigationController else { return }
        self.dismiss(animated: true, completion: nil)
        nvc.popToRootViewController(animated: false)
        print("Hi")
        
    }
}
