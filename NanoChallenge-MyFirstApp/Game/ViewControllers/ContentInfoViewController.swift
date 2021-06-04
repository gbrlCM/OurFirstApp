//
//  ContentInfoViewController.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 02/06/21.
//

import UIKit

class ContentInfoViewController: UIViewController {

    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    var titleString: String = ""
    var bodyString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doneButton.addAction(.init(handler: {[weak self] _ in
            self?.dismiss(animated: true, completion: nil)
        }), for: .touchUpInside)
        subjectLabel.text = titleString
        bodyLabel.text = bodyString
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
