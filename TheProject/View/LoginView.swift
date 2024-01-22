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
    private lazy var emailLabel = CustomLabel(text: "E-mail", font: .boldSystemFont(ofSize: 15))
    private lazy var passwordLabel = CustomLabel(text: "Password", font: .boldSystemFont(ofSize: 15))
    private lazy var singUpLabel = CustomLabel(text: "Sign up with", font: .boldSystemFont(ofSize: 15), color: .gray)
    private lazy var newHereLabel = CustomLabel(text: "New Here?", font: .systemFont(ofSize: 18), color: .gray)
    // Text field's
    let emailTextField = CustomTextField(placeholder: "Enter email", textColor: .white)
    let passwordTextField = CustomTextField(placeholder: "Enter password", textColor: .white)
    // Button's
    let forgetPasswordButton = UIButton(title: "Forget password", titleColor: .white, font: .boldSystemFont(ofSize: 14))
    private lazy var loginButton = UIButton(title: "LOG IN", titleColor: .black, backgroundColor: .white, cornerRadius: 20, font: .boldSystemFont(ofSize: 25))
    private lazy var createAccountButton = UIButton(title: "Create Account", titleColor: .white, font: .boldSystemFont(ofSize: 18))
    private lazy var googleAuth = UIButton(title: "Sign in with Google", titleColor: .black, backgroundColor: .white, image: "goo", font: .boldSystemFont(ofSize: 14))
    private lazy var appleAuth = UIButton(title: "Sign in with Apple", titleColor: .black, backgroundColor: .white, image: "app", font: .boldSystemFont(ofSize: 14))
    // View's
    private lazy var firstSeparatorView = UIView(color: .gray)
    private lazy var secondSeparatorView = UIView(color: .gray)
    
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
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        emailTextField.layer.cornerRadius = emailTextField.frame.width / 20
        passwordTextField.layer.cornerRadius = passwordTextField.frame.width / 20
        googleAuth.layer.cornerRadius = googleAuth.frame.width / 15
        appleAuth.layer.cornerRadius = appleAuth.frame.width / 15
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
        
       setupUIElements()
    }
    
    //MARK: - Private methods
    
    private func setupUIElements() {
        // Setup Email text field
        emailTextField.textField.tintColor = .white
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.textField.keyboardType = .emailAddress
        
        // Setup Password text field
        passwordTextField.textField.tintColor = .white
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.textField.isSecureTextEntry = true
    }
    
    //MARK: - Open methods
    
    func loginAddTargets(target: Any, action: Selector) {
        loginButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func createAccountAddTargets(target: Any, action: Selector) {
        createAccountButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func googleAuthAddTargets(target: Any, action: Selector) {
        googleAuth.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func appleAuthAddTargets(target: Any, action: Selector) {
        appleAuth.addTarget(target, action: action, for: .touchUpInside)
    }
}

//MARK: - Extension

private extension LoginView {
    
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
        
            // Email label
            emailLabel.bottomAnchor.constraint(equalTo: self.topAnchor, constant: Constans.topInsets),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            emailLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            
            // Email text field
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: Constans.tenPoints),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            emailTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            
            // Password label
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: Constans.tenPoints),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            passwordLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
        
            // Password text field
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: Constans.fivePoints),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.thirtyPoints),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            passwordTextField.heightAnchor.constraint(equalToConstant: Constans.textFieldHeight),
            
            // Forget password button
            forgetPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: Constans.thirtyPoints),
            forgetPasswordButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.thirtyPoints),
            forgetPasswordButton.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            forgetPasswordButton.widthAnchor.constraint(equalToConstant: Constans.forgetPasswordButtonWidth),
            
            // Login button
            loginButton.topAnchor.constraint(equalTo: forgetPasswordButton.bottomAnchor, constant: Constans.twentyPoints),
            loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: Constans.loginButtonHeight),
            loginButton.widthAnchor.constraint(equalToConstant: Constans.loginButtonWidth),
            
            // New here label
            newHereLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: Constans.tenPoints),
            newHereLabel.heightAnchor.constraint(equalToConstant: Constans.labelHeight),
            newHereLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            newHereLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            // Create account button
            createAccountButton.topAnchor.constraint(equalTo: newHereLabel.bottomAnchor, constant: Constans.twentyPoints),
            createAccountButton.heightAnchor.constraint(equalToConstant: Constans.twentyPoints),
            createAccountButton.widthAnchor.constraint(equalToConstant: Constans.createButtonWidth),
            createAccountButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            // Sign up label
            singUpLabel.topAnchor.constraint(equalTo: createAccountButton.bottomAnchor, constant: Constans.twentyPoints),
            singUpLabel.heightAnchor.constraint(equalToConstant: Constans.twentyPoints),
            singUpLabel.widthAnchor.constraint(equalToConstant: Constans.labelWidth),
            singUpLabel.centerXAnchor.constraint(equalTo: createAccountButton.centerXAnchor),
            
            // Separator view
            firstSeparatorView.topAnchor.constraint(equalTo: singUpLabel.topAnchor, constant: Constans.fivePoints),
            firstSeparatorView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            firstSeparatorView.heightAnchor.constraint(equalToConstant: Constans.separatorHeight),
            firstSeparatorView.widthAnchor.constraint(equalToConstant: Constans.separatorWidth),
            secondSeparatorView.topAnchor.constraint(equalTo: singUpLabel.topAnchor, constant: Constans.fivePoints),
            secondSeparatorView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            secondSeparatorView.heightAnchor.constraint(equalToConstant: Constans.separatorHeight),
            secondSeparatorView.widthAnchor.constraint(equalToConstant: Constans.separatorWidth),
            
            // Google auth button
            googleAuth.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -Constans.twentyPoints),
            googleAuth.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constans.twentyPoints),
            googleAuth.heightAnchor.constraint(equalToConstant: Constans.authButtonHeight),
            googleAuth.widthAnchor.constraint(equalToConstant: Constans.authButtonWidth),
            
            // Apple auth button
            appleAuth.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -Constans.twentyPoints),
            appleAuth.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constans.twentyPoints),
            appleAuth.heightAnchor.constraint(equalToConstant: Constans.authButtonHeight),
            appleAuth.widthAnchor.constraint(equalToConstant: Constans.authButtonWidth),
        ])
    }
}
