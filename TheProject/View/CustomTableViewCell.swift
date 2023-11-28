//
//  CustomTableViewCell.swift
//  TheProject
//
//  Created by Nikita on 31.10.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    let identifire = "Cell"
    let label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setCellElements()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setCellElements() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        contentView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 30),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 10)
        ])
    }

}
