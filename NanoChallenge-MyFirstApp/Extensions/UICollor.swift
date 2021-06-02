//
//  UICollor.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 01/06/21.
//

import Foundation
import UIKit

extension UIColor {
    
    func darken(by coeficient: CGFloat) -> UIColor {
        guard let color = self.cgColor.components else {
            return self
        }
        /*
         Esse código é responsavel por criar um tom de azul mais escuro para quando o botão estiver sendo pressionado.
         para mais informações de como fazer isso olhe a documentação de UIColor e pesquise sobre
         
         https://developer.apple.com/documentation/uikit/uicolor
         */
        let darkerColor = UIColor(red: color[0] - coeficient, green: color[1] - coeficient, blue: color[2] - coeficient, alpha: 1)
        
        return darkerColor
        
    }
    
    func lighten(by coefient: CGFloat) -> UIColor {
        darken(by: -coefient)
    }
    
    
    static var accent: UIColor {
        UIColor(named: "AccentColor")!
    }
}
