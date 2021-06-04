//
//  ResultCell.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Gabriel Ferreira de Carvalho on 03/06/21.
//

import Foundation
import UIKit

class ResultCell: UITableViewCell {
    
    lazy var container: UIView = {
        let container = UIView(frame: .zero)
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    lazy var textContainer: UIView = {
        
        let container = UIView(frame: .zero)
        container.translatesAutoresizingMaskIntoConstraints = false
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOffset = .init(width: 0, height: 2)
        container.clipsToBounds = true
        container.layer.shadowRadius = 2
        container.layer.shadowOpacity = 0.3
        container.isUserInteractionEnabled = true
        container.backgroundColor = .cellColor
        container.layer.cornerRadius = 8
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(flip)))
        return container
    }()
    lazy var imageContainer: UIView = {
        let container = UIView(frame: .zero)
        container.isHidden = true
        container.translatesAutoresizingMaskIntoConstraints = false
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOffset = .init(width: 0, height: 2)
        container.clipsToBounds = true
        container.layer.shadowRadius = 2
        container.layer.shadowOpacity = 0.3
        container.isUserInteractionEnabled = true
        container.backgroundColor = .cellColor
        container.layer.cornerRadius = 8
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(flip)))
        return container
    }()
    lazy var cardImage: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    lazy var title: UILabel = {
        let title = UILabel(frame: .zero)
        title.setContentHuggingPriority(.defaultLow, for: .horizontal)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    lazy var body: UILabel = {
        let body = UILabel(frame: .zero)
        body.setContentHuggingPriority(.defaultLow, for: .horizontal)
        body.translatesAutoresizingMaskIntoConstraints = false
        return body
    }()
    
    var state: CellState = CellState()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.isUserInteractionEnabled = true
        self.backgroundColor = .none
        contentView.addSubview(container)
        container.addSubview(textContainer)
        container.addSubview(imageContainer)
        imageContainer.addSubview(cardImage)
        textContainer.addSubview(title)
        textContainer.addSubview(body)
        
        setupConstraints()
        
        textContainer.backgroundColor = .cellColor
        textContainer.layer.cornerRadius = 8
        
        title.font = .boldSystemFont(ofSize: 26)
        body.font = .systemFont(ofSize: 15)
        body.numberOfLines = 0
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    public func setup(title: String, body: String, isRight: Bool, image: UIImage?, state: CellState) {
        self.title.text = title
        self.body.text = body
        self.state = state
        
        if isRight {
            self.title.textColor = .systemGreen
        } else {
            self.title.textColor = .systemRed
        }
        
        if state.isOpen {
            textContainer.isHidden = true
            imageContainer.isHidden = false
        } else {
            textContainer.isHidden = false
            imageContainer.isHidden = true
        }
        
        self.cardImage.image = image
    }
    
    @objc
    private func flip() {
        if !state.isOpen {
            UIView.transition(with: container, duration: 0.5, options: [.transitionFlipFromRight], animations: { [unowned self] in
                self.state.isOpen = true
                textContainer.isHidden = true
                imageContainer.isHidden = false
            })
        } else {
            UIView.transition(with: container, duration: 0.5, options: [.transitionFlipFromLeft], animations: { [unowned self] in
                self.state.isOpen = false
                textContainer.isHidden = false
                imageContainer.isHidden = true
            })
        }
        
    }
    
    private func setupConstraints() {
        
        let containerConstraints: [NSLayoutConstraint] = [
            container.topAnchor.constraint(equalTo: contentView.topAnchor),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ]
        NSLayoutConstraint.activate(containerConstraints)
        
        let textContainerConstraints: [NSLayoutConstraint] = [
            textContainer.topAnchor.constraint(equalTo: container.topAnchor),
            textContainer.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -16),
            textContainer.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            textContainer.trailingAnchor.constraint(equalTo: container.trailingAnchor),
        ]
        NSLayoutConstraint.activate(textContainerConstraints)
        
        let imageContainerConstraints: [NSLayoutConstraint] = [
            imageContainer.topAnchor.constraint(equalTo: container.topAnchor),
            imageContainer.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -16),
            imageContainer.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            imageContainer.trailingAnchor.constraint(equalTo: container.trailingAnchor),
        ]
        NSLayoutConstraint.activate(imageContainerConstraints)
        
        let imageConstraints: [NSLayoutConstraint] = [
            cardImage.topAnchor.constraint(equalTo: imageContainer.topAnchor, constant: 16),
            cardImage.bottomAnchor.constraint(equalTo: imageContainer.bottomAnchor, constant: -16),
            cardImage.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor, constant: 16),
            cardImage.trailingAnchor.constraint(equalTo: imageContainer.trailingAnchor, constant: -16),
        ]
        NSLayoutConstraint.activate(imageConstraints)
        
        let titleConstraints: [NSLayoutConstraint] = [
            title.topAnchor.constraint(equalTo: textContainer.topAnchor, constant: 16),
            title.leadingAnchor.constraint(equalTo: textContainer.leadingAnchor, constant: 16),
            title.trailingAnchor.constraint(equalTo: textContainer.trailingAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(titleConstraints)
        
        let bodyConstraints: [NSLayoutConstraint] = [
            body.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 16),
            body.leadingAnchor.constraint(equalTo: textContainer.leadingAnchor, constant: 16),
            body.trailingAnchor.constraint(equalTo: textContainer.trailingAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(bodyConstraints)
    }
}
