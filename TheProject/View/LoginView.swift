//
//  LoginView.swift
//  TheProject
//
//  Created by Nikita on 23.12.2023.
//

import UIKit

class LoginView: UIView {
    
    //MARK: - UI Elements
    
    let backgroundImage: UIImageView =  {
        let image = UIImageView()
        image.image = UIImage(named: "back")
        return image
    }()
    
    let emailLabel = CustomLabel(text: "E-mail", font: .boldSystemFont(ofSize: 15), color: .dynamicText)
    let passwordLabel = CustomLabel(text: "Password", font: .boldSystemFont(ofSize: 15), color: .dynamicText)
    
    let emailTextField = CustomTextField(placeholder: "Enter email")
    let passwordTextField = CustomTextField(placeholder: "Enter password")
    
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
        addSubviews(backgroundImage, emailLabel, emailTextField, passwordLabel, passwordTextField)
        
        // Setup Email text field
        emailTextField.layer.cornerRadius = 10
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.dynamicText.cgColor
        emailTextField.textField.keyboardType = .emailAddress

        // Setup Password text field
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.dynamicText.cgColor
        passwordTextField.textField.isSecureTextEntry = true
    }
}

extension LoginView {
    
    enum Constans {
        static let fivePoints: CGFloat = 5
        static let tenPoints: CGFloat = 10
        static let thirtyPoints: CGFloat = 30
        static let labelHeight: CGFloat = 25
        static let textFieldHeight: CGFloat = 60
        static let topInsets: CGFloat = 140
        static let textFieldWidth: CGFloat = 325
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            // Background image
            backgroundImage.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            // Email label
            emailLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: Constans.topInsets),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            
            // Email text field
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: Constans.fivePoints),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            emailTextField.widthAnchor.constraint(equalToConstant: Constans.textFieldWidth),
            
            
            // Password label
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: Constans.thirtyPoints),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            
            // Password text field
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: Constans.fivePoints),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            passwordTextField.widthAnchor.constraint(equalToConstant: Constans.textFieldWidth),
        ])
    }
}

#Preview() {
    LoginViewController()
}
