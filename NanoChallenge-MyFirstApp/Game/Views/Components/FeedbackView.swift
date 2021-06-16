//
//  FeedbackView.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 16/06/21.
//

import UIKit

@IBDesignable
class FeedbackView: UIView {
    
    //MARK: Views
    private var symbolImage: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    //MARK: IBInspecables
    @IBInspectable
    var symbol: UIImage? {
        get {
            symbolImage.image
        } set(symbolInput) {
            symbolImage.image = symbolInput
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            layer.cornerRadius
        } set(radiusInput) {
            layer.cornerRadius = radiusInput
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
    
    //MARK: Inits
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        setupViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViewHierarchy()
        setupViewConstraints()
    }
    
    //MARK: Setup
    private func setupViewHierarchy() {
        addSubview(symbolImage)
    }
    
    private func setupViewConstraints() {
        let symbolImageConstraints: [NSLayoutConstraint] = [
            symbolImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            symbolImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            symbolImage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7),
            symbolImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7)
        ]
        
        NSLayoutConstraint.activate(symbolImageConstraints)
    }
    
    //MARK: Animations
    func animate(_ action: @escaping () -> Void) {
        layer.opacity = 0
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseIn], animations: { [weak self] in
            self?.layer.opacity = 1
        }, completion: {_ in
            action()
            UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseOut], animations: { [weak self] in
                self?.layer.opacity = 0
            }, completion: {_ in
                
            })
        })
    }
    
}
