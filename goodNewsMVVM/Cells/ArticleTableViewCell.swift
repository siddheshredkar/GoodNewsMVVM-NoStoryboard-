//
//  ArticleTableViewCell.swift
//  goodNewsMVVM
//
//  Created by Siddhesh Redkar on 2020-04-20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    
    static let reuseID = "ArticleTableViewCell"
    
    let titleLbl = UILabel()
    let descriptionLbl = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        addSubviews(titleLbl,descriptionLbl)
        
        let padding: CGFloat = 12
        
        titleLbl.numberOfLines = 0
        titleLbl.font = UIFont.boldSystemFont(ofSize: 20)
        
        descriptionLbl.numberOfLines = 0
        descriptionLbl.font = UIFont.systemFont(ofSize: 17)
        
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        descriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            
            
            titleLbl.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
            titleLbl.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            titleLbl.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            
            
            descriptionLbl.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: padding),
            descriptionLbl.leadingAnchor.constraint(equalTo: titleLbl.leadingAnchor, constant: 0),
            descriptionLbl.trailingAnchor.constraint(equalTo:titleLbl.trailingAnchor, constant: 0),
            descriptionLbl.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding)
            
            
            
        ])
    }
    
    
    
}
