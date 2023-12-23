//
//  CustomTextField.swift
//  TheProject
//
//  Created by Nikita on 23.12.2023.
//

import UIKit

class CustomTextField: UIView {
    
    let fieldView = UIView()
    
    init() {
        super.init(frame: .zero)

        
        // Call function's
        setupElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    
    func setupElements() {
        self.addSubviews(fieldView)
    }
}
