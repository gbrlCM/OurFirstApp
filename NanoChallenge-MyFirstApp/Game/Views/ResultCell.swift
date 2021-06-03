//
//  ResultCell.swift
//  NanoChallenge-MyFirstApp
//
//  Created by Marcos Chevis on 02/06/21.
//

import Foundation
import UIKit

class ResultCell: UITableViewCell {
    
    lazy var container: UIView = {
        
        let container = UIView(frame: .zero)
        container.translatesAutoresizingMaskIntoConstraints = false
        
        return container
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

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {

        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .none
        
        addSubview(container)
        container.addSubview(title)
        container.addSubview(body)
        
        setupConstraints()

        container.backgroundColor = .secondarySystemBackground
        container.layer.cornerRadius = 8
        
        title.font = .boldSystemFont(ofSize: 24)
        body.font = .systemFont(ofSize: 14)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setup(title: String, body: String) {
        self.title.text = title
        self.body.text = body
    }
    
    private func setupConstraints() {
        
        let containerConstraints: [NSLayoutConstraint] = [
            container.topAnchor.constraint(equalTo: self.topAnchor),
            container.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            container.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ]
        NSLayoutConstraint.activate(containerConstraints)
       
        let titleConstraints: [NSLayoutConstraint] = [
            title.topAnchor.constraint(equalTo: container.topAnchor, constant: 16),
            title.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
            title.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(titleConstraints)

        let bodyConstraints: [NSLayoutConstraint] = [
            body.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 16),
            body.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
            body.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(bodyConstraints)
    }
}
