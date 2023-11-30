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
    
    let descriptionStaticLabel: UILabel = {
        let label = UILabel()
        label.text = "Описание задачи"
        label.textColor = .dynamicText
        label.font = .boldSystemFont(ofSize: 25)
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return label
    }()
    
    let descriptionTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: 20)
        textField.placeholder = "Введите описание задачи"
        textField.textColor = .dynamicText
        textField.tintColor = .dynamicText
        textField.clearButtonMode = .always
        textField.heightAnchor.constraint(equalToConstant: 150).isActive = true
        return textField
    }()
    
    let descriptionStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 1
        stack.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return stack
    }()
    
    let addedButton: UIButton = {
        let button = UIButton()
        button.setTitle("Добавить", for: .normal)
        button.backgroundColor = .systemGreen
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        return button
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
    
    //MARK: - Methods
    
    func addedButtonAddTarget(_ target: Any, selector: Selector) {
        addedButton.addTarget(target, action: selector, for: .touchUpInside)
    }
    
    //MARK: - Private methods
    
    private func setupView() {
        
        // Configure view
        self.backgroundColor = .back
        taskStack.addArrangedSubviews(taskStaticLabel, taskTextField)
        descriptionStack.addArrangedSubviews(descriptionStaticLabel, descriptionTextField)
        self.addSubviews(taskStack, descriptionStack, addedButton)
        
        // Configure button
        addedButton.layer.cornerRadius = 20
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
            
            // Description stack
            descriptionStack.topAnchor.constraint(equalTo: self.taskStack.bottomAnchor),
            descriptionStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            descriptionStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            // Added button
            addedButton.topAnchor.constraint(equalTo: descriptionStack.bottomAnchor, constant: 200),
            addedButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
}
