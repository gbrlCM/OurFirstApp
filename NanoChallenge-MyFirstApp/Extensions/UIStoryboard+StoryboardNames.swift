//
//  UIStoryboard+StoryboardNames.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 02/06/21.
//

import Foundation
import UIKit

extension UIStoryboard {
    
    convenience init(named name: StoryBoardName) {
        self.init(name: name.rawValue, bundle: nil)
    }
    
    func instantiateViewController(withIdentifier id: ViewControllerIdentifier) -> UIViewController {
        return instantiateViewController(withIdentifier: id.rawValue)
    }
}
