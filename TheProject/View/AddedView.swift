//
//  AddedView.swift
//  TheProject
//
//  Created by Nikita on 30.11.2023.
//

import UIKit

class AddedView: UIView {
    
    //MARK: - UI Elements
    
    let taskStaticLabel: UILabel = {
        let label = UILabel()
        label.text = "Задача"
        label.textColor = .dynamicText
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    
    let taskTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Введите задачу"
        textField.font = .systemFont(ofSize: 20)
        textField.textColor = .dynamicText
        textField.tintColor = .dynamicText
        textField.clearButtonMode = .always
        return textField
    }()
    
    
    let taskStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 1
        stack.distribution = .fillEqually
        stack.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return stack
    }()
    
    //MARK: - Initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Call function's
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private methods
    
    private func setupView() {
        
        // Configure view
        self.backgroundColor = .back
        taskStack.addArrangedSubviews(taskStaticLabel, taskTextField)
        self.addSubviews(taskStack)
    }
}

//MARK: - Extesion

extension AddedView {
    
    ///Setup constraints for AddedView
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            // First stack
            taskStack.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            taskStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            taskStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
        ])
    }
}
