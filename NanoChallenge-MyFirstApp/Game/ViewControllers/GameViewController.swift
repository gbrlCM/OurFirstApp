//
//  GameViewController.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 01/06/21.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var exitButton: UIButton!
    
    var number: Int?

    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var wrongButton: UIButton!
    @IBOutlet weak var correctButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupStyle()
        if let sendNumber = number {
            print(sendNumber)
        }
        
        exitButton.addAction(.init(handler: {[weak self] _ in
            guard let nvc = self?.navigationController else { return }
            nvc.popViewController(animated: true)
        }), for: .touchUpInside)
        
        
        // Do any additional setup after loading the view.
    }
    private func setupStyle(){
        wrongButton.layer.cornerRadius = wrongButton.frame.height/8
        correctButton.layer.cornerRadius = correctButton.frame.height/8
        
        cardImageView.layer.shadowColor = UIColor.black.cgColor
        cardImageView.layer.shadowOffset = CGSize(width: 4, height: 4)
        cardImageView.layer.shadowRadius = 12
        cardImageView.layer.shadowOpacity = 0.6
        
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
