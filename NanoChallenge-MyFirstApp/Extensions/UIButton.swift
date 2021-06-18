//
//  UIButton.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 01/06/21.
//

import Foundation
import UIKit

extension UIButton {
    
    private func image(withColor color: UIColor, withAlpha alpha: CGFloat) -> UIImage? {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()

        context?.setFillColor(color.cgColor)
        context?.setAlpha(alpha)
        context?.fill(rect)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    func setBackgroundColor(_ color: UIColor, withAlpha alpha: CGFloat = 1, for state: UIControl.State) {
        self.setBackgroundImage(image(withColor: color, withAlpha: alpha), for: state)
    }
}
