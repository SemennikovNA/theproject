//
//  LoginViewController.swift
//  TheProject
//
//  Created by Nikita on 23.12.2023.
//

import UIKit
import Lottie

class LoginViewController: UIViewController {
    
    //MARK: - UI Elements
    
    let gifImageView: LottieAnimationView = {
        let animation = LottieAnimationView(name: "login")
        animation.loopMode = .loop
        animation.play()
        animation.contentMode = .scaleAspectFill
        return animation
    }()
    
    let loginView = LoginView()
    
    //MARK: - Properties
    
    let firebaseManager = FirebaseManager()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call function's
        setupView()
        signatureDelegates()
        setupConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        loginView.layoutIfNeeded()
    }
    
    //MARK: - Private method
    
    private func signatureDelegates() {
        loginView.emailTextField.textField.delegate = self
        loginView.passwordTextField.textField.delegate = self
    }
    
    private func setupView() {
        // Setup view
        view.backgroundColor = .white
        view.addSubviews(gifImageView, loginView)
        
        // Setup navigation bar
        self.navigationItem.title = "Log in"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationController?.navigationBar.tintColor = .black
        
        // Call method's
        setupLoginView()
    }
    
    
    private func setupLoginView() {
        // Setup login view
        loginView.layer.cornerRadius = 20
        loginView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        loginView.layer.masksToBounds = true
        
        // Add tergets for button
        loginView.loginAddTargets(target: self, action: #selector(loginButtonTapped))
        loginView.createAccountAddTargets(target: self, action: #selector(createAccountButtonTapped))
        loginView.googleAuthAddTargets(target: self, action: #selector(googleButtonTapped))
        loginView.appleAuthAddTargets(target: self, action: #selector(appleButtonTapped))
    }
    
    //MARK: - Objective-C methods
    
    @objc func loginButtonTapped() {
        guard let email = loginView.emailTextField.textField.text, 
                let password = loginView.passwordTextField.textField.text else { return }
        firebaseManager.login(email: email, password: password)
        firebaseManager.getCurrentUser()
    }
    
    @objc func createAccountButtonTapped() {
         let registrVC = RegistrationViewController()
        registrVC.modalPresentationStyle = .fullScreen
        registrVC.modalTransitionStyle = .flipHorizontal
        navigationController?.pushViewController(registrVC, animated: true)
    }
    
    @objc func googleButtonTapped() {
        print("Google")
    }
    
    @objc func appleButtonTapped() {
        print("Apple")
    }
}

//MARK: - Extension

extension LoginViewController {
    
    enum Constans {
        static let tenPoints: CGFloat = 10
        static let twentyPoints: CGFloat = 20
        static let gifImageWidth: CGFloat = 200
        static let gifImageHeight: CGFloat = 80
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            // Gif image view
            gifImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -Constans.twentyPoints),
            gifImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gifImageView.heightAnchor.constraint(equalToConstant: Constans.gifImageHeight),
            gifImageView.widthAnchor.constraint(equalToConstant: Constans.gifImageWidth),
            
            // Login view
            loginView.topAnchor.constraint(equalTo: gifImageView.bottomAnchor, constant: Constans.twentyPoints),
            loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            loginView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

//MARK: Text field delegate methods

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
}
