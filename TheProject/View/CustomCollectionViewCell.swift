//
//  CustomCollectionViewCell.swift
//  TheProject
//
//  Created by Nikita on 08.12.2023.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
   static let reuseID = "Cell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
