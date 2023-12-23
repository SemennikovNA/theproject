//
//  CustomTableViewCell.swift
//  TheProject
//
//  Created by Nikita on 31.10.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    //MARK: - Properties
    
    let identifire = "Cell"
    
    //MARK: - UI Elements
    
    let taskLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = .dynamicText
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .dynamicText
        return label
    }()
    
    //MARK: - Initialize
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setCellElements()
    }
    
    //MARK: - Private methods
    
    private func setCellElements() {
        contentView.addSubviews(taskLabel, descriptionLabel)
        
        NSLayoutConstraint.activate([
            
            // Task label
            taskLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            taskLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            taskLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 30),
            
            // Description label
            descriptionLabel.leadingAnchor.constraint(equalTo: taskLabel.trailingAnchor, constant: 15),
            descriptionLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
        ])
    }

}
