//
//  RegistrationView.swift
//  TheProject
//
//  Created by Nikita on 22.01.2024.
//

import UIKit

class RegistrationView: UIView {
    
    //MARK: - User interface elements
    // Label's
    private lazy var nameLabel = CustomLabel(text: "Name", font: .boldSystemFont(ofSize: 15))
    private lazy var emailLabel = CustomLabel(text: "Email", font: .boldSystemFont(ofSize: 15))
    private lazy var passwordLabel = CustomLabel(text: "Password", font: .boldSystemFont(ofSize: 15))
    private lazy var repeatPasswordLabel = CustomLabel(text: "Repeat password", font: .boldSystemFont(ofSize: 15))
    
    // Text field's
    private lazy var nameTextField = CustomTextField(placeholder: "Enter your name", textColor: .white)
    private lazy var emailTextField = CustomTextField(placeholder: "Enter your email", textColor: .white)
    private lazy var passwordTextField = CustomTextField(placeholder: "Enter password", textColor: .white)
    private lazy var repeatPasswordTextField = CustomTextField(placeholder: "Repeat password", textColor: .white)
    
    // Button's
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    //MARK: - Initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Call method's
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Layout methods
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
    }
    
    //MARK: - Open methods
    
    open func registerButtonTapped(target: Any, action: Selector) {
        registerButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    //MARK: - Private methods
    
    private func setupView() {
        self.backgroundColor = .black
        self.addSubviews(nameLabel,
                         nameTextField,
                         emailLabel,
                         emailTextField,
                         passwordLabel,
                         passwordTextField,
                         repeatPasswordLabel,
                         repeatPasswordTextField,
                         registerButton
        )
        
        // Call method's
        setupUserElements()
    }
    
    private func setupUserElements() {
        // Name text field
        nameTextField.layer.cornerRadius = 20
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.white.cgColor
        
        
        // Email text field
        emailTextField.layer.cornerRadius = 20
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.textField.keyboardType = .emailAddress
        
        // Password text field
        passwordTextField.layer.cornerRadius = 20
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.textField.isSecureTextEntry = true
        
        // Repeat password text field
        repeatPasswordTextField.layer.cornerRadius = 20
        repeatPasswordTextField.layer.borderWidth = 1
        repeatPasswordTextField.layer.borderColor = UIColor.white.cgColor
        repeatPasswordTextField.textField.isSecureTextEntry = true
        
        // Register button
        registerButton.layer.cornerRadius = 15
    }
}

private extension RegistrationView {
 
    enum Constans {
        
        static let tenPoints: CGFloat = 10
        static let fifteenPoints: CGFloat = 20
        static let thirtyPoints: CGFloat = 30
        static let topInsets: CGFloat = 150
        static let textFieldHeight: CGFloat = 60
        static let labelHeight: CGFloat = 25
        static let labelWidth: CGFloat = 90
        static let registerButtonWidth: CGFloat = 130
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            // Name label
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: Constans.thirtyPoints),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            nameLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            nameLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            
            // Name text field
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: Constans.tenPoints),
            nameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            nameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            nameTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            
            // Email label
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: Constans.fifteenPoints),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            emailLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            
            // Email text field
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: Constans.tenPoints),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            emailTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            
            // Password label
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: Constans.fifteenPoints),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            passwordLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            
            // Password text field
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: Constans.tenPoints),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            passwordTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            
            // Repeat password label
            repeatPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: Constans.fifteenPoints),
            repeatPasswordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            repeatPasswordLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            repeatPasswordLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            
            // Repeat password text field
            repeatPasswordTextField.topAnchor.constraint(equalTo: repeatPasswordLabel.bottomAnchor, constant: Constans.tenPoints),
            repeatPasswordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            repeatPasswordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            repeatPasswordTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            
            // Register button
            registerButton.topAnchor.constraint(equalTo: repeatPasswordTextField.bottomAnchor, constant: Constans.thirtyPoints),
            registerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            registerButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -Constans.thirtyPoints),
            registerButton.widthAnchor.constraint(equalToConstant: Constans.registerButtonWidth)
        ])
    }
}
