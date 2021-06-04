//
//  GameResultsViewController.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 02/06/21.
//
import UIKit

class GameResultsViewController: UIViewController {
    
    @IBOutlet weak var resultsTableView: UITableView!
    @IBOutlet weak var congratsLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var newGameButton: UIButton!
    
    
    var rowIdentifier: String = "rowIdentifier"
    var cards: [Card] = [] {
        didSet {
            cellState = cards.map { _ in CellState() }
        }
    }
    var cellState: [CellState] = []
    weak var delegate: GameResultsDelegate?
    
    private let sectionInsets = UIEdgeInsets(
        top: 50.0,
        left: 20.0,
        bottom: 50.0,
        right: 20.0)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsTableView.register(ResultCell.self, forCellReuseIdentifier: rowIdentifier)
        resultsTableView.dataSource = self
        resultsTableView.delegate = self
        resultsTableView.rowHeight = 300
        exitButton.setTitleColor(.gray ,for: .highlighted)
        newGameButton.setTitleColor(.gray ,for: .highlighted)
        initialSetup()
        setupButtonsBinding()
        // Do any additional setup after loading the view.
    }
    
    private func setupButtonsBinding() {
        exitButton.addAction(.init(handler: {[weak self] _ in
            self?.delegate?.goToHome()
        }), for: .touchUpInside)
        
        newGameButton.addAction(.init(handler: {[weak self] _ in
            self?.delegate?.newGame()
        }), for: .touchUpInside)
    }
    
    private func generateTitleForCard(at indexPath: IndexPath) -> String{
        return "\(indexPath.row + 1) - \(cards[indexPath.row].subject)"
    }
    
    private func setNumberOfCorrectAnswers(for number: Int) {
        print("number: \(number)")
        
        countLabel.text = "You got \(number)/\(cards.count)"
    }
    
    private func setTexts(correctAnswerCount: Int) {
        if correctAnswerCount >= 8 {
            congratsLabel.text = "Amazing"
            congratsLabel.textColor = .systemGreen
            
            jokeLabel.text = "now go fix our title!"
        } else if correctAnswerCount < 8 && correctAnswerCount >= 5 {
            congratsLabel.text = "Okay"
            congratsLabel.textColor = .systemOrange
            
            jokeLabel.text = "you're doing well my young poopawan!"
        } else {
            congratsLabel.text = "Jesus Christ!"
            congratsLabel.textColor = .systemRed
            
            jokeLabel.text = "you really need this app!"
        }
    }
    
    private func initialSetup() {
        let number = cards
            .filter { $0.userGetItRight == true }
            .count
        
        setNumberOfCorrectAnswers(for: number)
        setTexts(correctAnswerCount: number)
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
// MARK: - UICollectionViewDataSource
extension GameResultsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: rowIdentifier, for: indexPath) as! ResultCell
        cell.setup(
            title: generateTitleForCard(at: indexPath),
            body: cards[indexPath.row].answerExplanation,
            isRight: cards[indexPath.row].userGetItRight,
            image: cards[indexPath.row].cardImage,
            state: cellState[indexPath.row]
        )
        
        
        return cell
    }
        
}
extension GameResultsViewController: UITableViewDelegate {
    
}
