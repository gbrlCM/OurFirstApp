//
//  StartScreenViewController.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 01/06/21.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStartButtonStyle()
        // Do any additional setup after loading the view.
    }
    
    private func setupStartButtonStyle() {
        startButton.layer.cornerRadius = 16
        startButton.clipsToBounds = true
        startButton.backgroundColor = .none
        startButton.setBackgroundColor(.accent, for: .normal)
        startButton.setBackgroundColor(UIColor.accent.darken(by: 0.07), for: .highlighted)
        startButton.setTitleColor(.white, for: .normal)
        startButton.setTitleColor(.gray, for: .highlighted)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//        guard let vc = segue.destination as? GameViewController else { return }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
