//
//  GameResultsViewController.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 02/06/21.
//

import UIKit

class GameResultsViewController: UIViewController {
    
    @IBOutlet weak var resultsTableView: UITableView!
    
    
    var rowIdentifier: String = "rowIdentifier"
    
    let cards: [Card] = [Card(subject: "subject111111111", isCorrect: true, cardImage: UIImage(systemName: "pencil"), subjectExplanation: "subject explanation", answerExplanation: "aswer explanation", userGetItRight: true), Card(subject: "subject", isCorrect: true, cardImage: UIImage(systemName: "pencil"), subjectExplanation: "subject explanation", answerExplanation: "aswer explanation", userGetItRight: true), Card(subject: "subject", isCorrect: true, cardImage: UIImage(systemName: "pencil"), subjectExplanation: "subject explanation", answerExplanation: "aswer explanation", userGetItRight: true), Card(subject: "subject", isCorrect: true, cardImage: UIImage(systemName: "pencil"), subjectExplanation: "subject explanation", answerExplanation: "aswer explanation", userGetItRight: true)]
    
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
        
        resultsTableView.rowHeight = 400
        // Do any additional setup after loading the view.
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
        cell.setup(title: cards[indexPath.row].subject, body: cards[indexPath.row].answerExplanation)
        
        
        return cell
    }
        
}
extension GameResultsViewController: UITableViewDelegate {
    
}
