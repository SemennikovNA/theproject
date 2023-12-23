//
//  CustomLabel.swift
//  TheProject
//
//  Created by Nikita on 23.12.2023.
//

import UIKit

class CustomLabel: UILabel {
    
    let textLabel = UILabel()
    
    init(text: String?, font: UIFont?, color: UIColor? = .white) {
        super.init(frame: .infinite)
        self.textLabel.text = text
        self.textLabel.font = font
        self.textLabel.textColor = color
        
        // Call function's
        setupElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    
    func setupElements() {
        self.addSubviews(textLabel)
    }
    
}
