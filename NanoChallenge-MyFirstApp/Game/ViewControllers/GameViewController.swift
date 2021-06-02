//
//  GameViewController.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 01/06/21.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var teste: UIButton!
    var number: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let sendNumber = number {
            print(sendNumber)
        }
        
        exitButton.addAction(.init(handler: {[weak self] _ in
            guard let nvc = self?.navigationController else { return }
            nvc.popViewController(animated: true)
        }), for: .touchUpInside)
        
        teste.addAction(UIAction(handler: {[weak self] _ in
            let storyboard = UIStoryboard(named: .gameResults)
            let vc = storyboard.instantiateViewController(withIdentifier: .gameResults)
            
            guard let nvc = self?.navigationController else { return }
            nvc.pushViewController(vc, animated: true)
        }), for: .touchUpInside)
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
