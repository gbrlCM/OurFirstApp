//
//  CardView.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 16/06/21.
//

import UIKit

@IBDesignable
class CardView: UIView {

    //MARK: Views
    var cardImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    //MARK: IBInspectable Properties
    @IBInspectable
    var image: UIImage? {
        get {
            cardImageView.image
        } set (imageInput) {
            cardImageView.image = imageInput
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        } set (radiusInput) {
            self.layer.cornerRadius = radiusInput
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
    
    //MARK: Setup functions
    private func setupViewHierarchy() {
        addSubview(cardImageView)
    }
    
    private func setupViewConstraints() {
        let imageViewConstraints: [NSLayoutConstraint] = [
            cardImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            cardImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4),
            cardImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -4),
            cardImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4)
        ]
        
        NSLayoutConstraint.activate(imageViewConstraints)
    }
}
