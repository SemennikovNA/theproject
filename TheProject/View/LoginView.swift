//
//  LoginView.swift
//  TheProject
//
//  Created by Nikita on 23.12.2023.
//

import UIKit

class LoginView: UIView {
    
    //MARK: - UI Elements
    // Label's
    let emailLabel = CustomLabel(text: "E-mail", font: .boldSystemFont(ofSize: 15))
    let passwordLabel = CustomLabel(text: "Password", font: .boldSystemFont(ofSize: 15))
    let singUpLabel = CustomLabel(text: "Sign up with", font: .boldSystemFont(ofSize: 15), color: .gray)
    let newHereLabel = CustomLabel(text: "New Here?", font: .systemFont(ofSize: 18), color: .gray)
    // Text field's
    let emailTextField = CustomTextField(placeholder: "Enter email", textColor: .white)
    let passwordTextField = CustomTextField(placeholder: "Enter password", textColor: .white)
    // Button's
    let forgetPasswordButton = UIButton(title: "Forget password", titleColor: .white, font: .boldSystemFont(ofSize: 14))
    let loginButton = UIButton(title: "LOG IN", titleColor: .black, backgroundColor: .white, cornerRadius: 20, font: .boldSystemFont(ofSize: 25))
    let createAccountButton = UIButton(title: "Create Account", titleColor: .white, font: .boldSystemFont(ofSize: 18))
    let googleAuth = UIButton(title: "Sign in with Google", titleColor: .black, backgroundColor: .white, image: "goo", font: .boldSystemFont(ofSize: 14))
    let appleAuth = UIButton(title: "Sign in with Apple", titleColor: .black, backgroundColor: .white, image: "app", font: .boldSystemFont(ofSize: 14))
    // View's
    let firstSeparatorView = UIView(color: .gray)
    let secondSeparatorView = UIView(color: .gray)
    
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
    
   private func setupView() {
        
        // Setup view
        self.backgroundColor = .black
        self.addSubviews(emailLabel,
                         emailTextField,
                         passwordLabel,
                         passwordTextField,
                         forgetPasswordButton,
                         loginButton,
                         newHereLabel,
                         createAccountButton,
                         firstSeparatorView,
                         singUpLabel,
                         secondSeparatorView,
                         googleAuth,
                         appleAuth
        )
        
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
        
        // Auth button
        googleAuth.layer.cornerRadius = 10
        appleAuth.layer.cornerRadius = 10
    }
    
    //MARK: - Methods
    
    func googleAuthAddTargets(target: Any, action: Selector) {
        googleAuth.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func appleAuthAddTargets(target: Any, action: Selector) {
        appleAuth.addTarget(target, action: action, for: .touchUpInside)
    }
}

//MARK: - Extension

extension LoginView {
    
    enum Constans {
        static let fivePoints: CGFloat = 5
        static let tenPoints: CGFloat = 10
        static let twentyPoints: CGFloat = 20
        static let thirtyPoints: CGFloat = 30
        static let fiftyPoints: CGFloat = 50
        static let labelHeight: CGFloat = 25
        static let labelWidth: CGFloat = 90
        static let forgetPasswordButtonWidth: CGFloat = 120
        static let topInsets: CGFloat = 70
        static let textFieldHeight: CGFloat = 60
        static let oneHundredPoints: CGFloat = 100
        static let authButtonHeight: CGFloat = 40
        static let authButtonWidth: CGFloat = 160
        static let separatorHeight: CGFloat = 2
        static let separatorWidth: CGFloat = 120
        static let createButtonWidth: CGFloat = 140
        static let loginButtonHeight: CGFloat = 50
        static let loginButtonWidth: CGFloat = 210
        static let textFieldWidth: CGFloat = 325
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            // Google auth button
            googleAuth.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -Constans.oneHundredPoints),
            googleAuth.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.twentyPoints),
            googleAuth.heightAnchor.constraint(equalToConstant: Constans.authButtonHeight),
            googleAuth.widthAnchor.constraint(equalToConstant: Constans.authButtonWidth),
            
            // Apple auth button
            appleAuth.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -Constans.oneHundredPoints),
            appleAuth.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.twentyPoints),
            appleAuth.heightAnchor.constraint(equalToConstant: Constans.authButtonHeight),
            appleAuth.widthAnchor.constraint(equalToConstant: Constans.authButtonWidth),
            
            // Separator view
            firstSeparatorView.bottomAnchor.constraint(equalTo: appleAuth.topAnchor, constant: -Constans.thirtyPoints),
            firstSeparatorView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            firstSeparatorView.heightAnchor.constraint(equalToConstant: Constans.separatorHeight),
            firstSeparatorView.widthAnchor.constraint(equalToConstant: Constans.separatorWidth),
            secondSeparatorView.topAnchor.constraint(equalTo: googleAuth.topAnchor, constant: -Constans.thirtyPoints),
            secondSeparatorView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            secondSeparatorView.heightAnchor.constraint(equalToConstant: Constans.separatorHeight),
            secondSeparatorView.widthAnchor.constraint(equalToConstant: Constans.separatorWidth),
            
            // Sign up label
            singUpLabel.bottomAnchor.constraint(equalTo: googleAuth.topAnchor, constant: -Constans.twentyPoints),
            singUpLabel.heightAnchor.constraint(equalToConstant: Constans.twentyPoints),
            singUpLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            singUpLabel.centerXAnchor.constraint(equalTo: createAccountButton.centerXAnchor),
            
            // Create account button
            createAccountButton.bottomAnchor.constraint(equalTo: singUpLabel.topAnchor, constant: -Constans.twentyPoints),
            createAccountButton.heightAnchor.constraint(equalToConstant: Constans.twentyPoints),
            createAccountButton.widthAnchor.constraint(equalToConstant: Constans.createButtonWidth),
            createAccountButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            // New here label
            newHereLabel.bottomAnchor.constraint(equalTo: createAccountButton.topAnchor, constant: -Constans.tenPoints),
            newHereLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            newHereLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            newHereLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            // Login button
            loginButton.bottomAnchor.constraint(equalTo: newHereLabel.topAnchor, constant: -Constans.twentyPoints),
            loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: Constans.loginButtonHeight),
            loginButton.widthAnchor.constraint(equalToConstant: Constans.loginButtonWidth),
        
            // Forget password button
            forgetPasswordButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -Constans.thirtyPoints),
            forgetPasswordButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            forgetPasswordButton.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            forgetPasswordButton.widthAnchor.constraint(equalToConstant: Constans.forgetPasswordButtonWidth),
            
            // Password text field
            passwordTextField.bottomAnchor.constraint(equalTo: forgetPasswordButton.topAnchor, constant: -Constans.fivePoints),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            passwordTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            
            // Password label
            passwordLabel.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -Constans.tenPoints),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            passwordLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),

            // Email text field
            emailTextField.bottomAnchor.constraint(equalTo: passwordLabel.topAnchor, constant: -Constans.tenPoints),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            emailTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            
            // Email label
            emailLabel.bottomAnchor.constraint(equalTo: self.topAnchor, constant: Constans.topInsets),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            emailLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
        
        ])
    }
}

#Preview() {
    LoginViewController()
}
