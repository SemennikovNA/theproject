//
//  LoginView.swift
//  TheProject
//
//  Created by Nikita on 23.12.2023.
//

import UIKit

class LoginView: UIView {
    
    //MARK: - UI Elements
    
    let emailLabel = CustomLabel(text: "E-mail", font: .boldSystemFont(ofSize: 15))
    let passwordLabel = CustomLabel(text: "Password", font: .boldSystemFont(ofSize: 15))
    let emailTextField = CustomTextField(placeholder: "Enter email", textColor: .white)
    let passwordTextField = CustomTextField(placeholder: "Enter password", textColor: .white)
    
    //MARK: - Life cycle
    
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
    
    func setupView() {
        
        // Setup view
        self.backgroundColor = .black
        self.addSubviews(emailLabel, emailTextField, passwordLabel, passwordTextField)
        
        // Setup Email text field
        emailTextField.layer.cornerRadius = 10
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.textField.keyboardType = .emailAddress

        // Setup Password text field
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.textField.isSecureTextEntry = true
    }
}

extension LoginView {
    
    enum Constans {
        static let fivePoints: CGFloat = 5
        static let tenPoints: CGFloat = 10
        static let thirtyPoints: CGFloat = 30
        static let labelHeight: CGFloat = 25
        static let labelWidth: CGFloat = 80
        static let textFieldHeight: CGFloat = 60
        static let topInsets: CGFloat = 50
        static let textFieldWidth: CGFloat = 325
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            // Email label
            emailLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: Constans.topInsets),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            emailLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            
            // Email text field
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: Constans.fivePoints),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            emailTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            
            
            // Password label
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: Constans.thirtyPoints),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            passwordLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            
            // Password text field
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: Constans.fivePoints),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            passwordTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
        ])
    }
}

#Preview() {
    LoginViewController()
}
