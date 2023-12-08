//
//  CustomCollectionViewCell.swift
//  TheProject
//
//  Created by Nikita on 08.12.2023.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Properties
    
   static let reuseID = "Cell"
    
    //MARK: - UI elements
    
    let textLabel = UILabel()
    
    //MARK: - Inititalize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Call function's
        setupCell()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private methods
    
    private func setupCell() {
        contentView.addSubviews(textLabel)
    }
}

//MARK: - Extension

extension CustomCollectionViewCell {
    
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            // Text label
            textLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
    }
    
}
