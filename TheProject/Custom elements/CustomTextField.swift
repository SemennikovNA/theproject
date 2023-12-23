//
//  CustomTextField.swift
//  TheProject
//
//  Created by Nikita on 23.12.2023.
//

import UIKit

class CustomTextField: UIView {
    
    let fieldView = UIView()
    let textField = UITextField()
    
    init(placeholder: String?, textColor: UIColor?) {
        super.init(frame: .zero)
        self.textField.placeholder = placeholder
        self.textField.textColor = textColor
        self.textField.attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [NSAttributedString.Key.foregroundColor : textColor!])
        
        // Call function's
        setupElements()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    
    func setupElements() {
        self.addSubviews(fieldView)
        fieldView.addSubviews(textField)
    }
}

extension CustomTextField {
    
    enum Constants {
        static let tenPoints: CGFloat = 10
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            // Setup field view
            fieldView.topAnchor.constraint(equalTo: self.topAnchor),
            fieldView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            fieldView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            fieldView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            // Setup text field
            textField.topAnchor.constraint(equalTo: self.fieldView.topAnchor, constant: Constants.tenPoints),
            textField.leadingAnchor.constraint(equalTo: self.fieldView.leadingAnchor, constant: Constants.tenPoints),
            textField.trailingAnchor.constraint(equalTo: self.fieldView.trailingAnchor, constant: -Constants.tenPoints),
            textField.bottomAnchor.constraint(equalTo: self.fieldView.bottomAnchor, constant: -Constants.tenPoints),
        ])
    }
}
 
