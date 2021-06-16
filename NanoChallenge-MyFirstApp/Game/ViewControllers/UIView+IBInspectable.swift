//
//  UIView+IBInspectable.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 16/06/21.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            layer.cornerRadius
        } set(radiusInput) {
            layer.cornerRadius = radiusInput
        }
    }
    
    @IBInspectable
    var maskToBounds: Bool {
        get {
            layer.masksToBounds
        } set (boundsInput) {
            layer.masksToBounds = boundsInput
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            guard let shadowColor = layer.shadowColor else { return .none }
            return UIColor(cgColor: shadowColor)
        } set (colorInput){
            layer.shadowColor = colorInput?.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            layer.shadowRadius
        } set(radiusInput) {
            layer.shadowRadius = radiusInput
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            layer.shadowOffset
        } set(offsetInput) {
            layer.shadowOffset = offsetInput
        }
    }
    
    @IBInspectable
    var shadowOppacity: Float {
        get {
            layer.shadowOpacity
        } set(opacityInput) {
            layer.shadowOpacity = opacityInput
        }
    }
    
}
