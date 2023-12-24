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
        let animation = LottieAnimationView(name: "task")
        animation.loopMode = .loop
        animation.play()
        animation.contentMode = .scaleAspectFill
        return animation
    }()
    
    let loginView = LoginView()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Call function's
        setupView()
        signatureDelegates()
        setupConstraints()
    }
    
    //MARK: - Private func
    
    private func setupView() {
        // Setup view
        view.backgroundColor = .white
        view.addSubviews(gifImageView, loginView)
        
        // Setup login view
        loginView.layer.cornerRadius = 20
        loginView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        loginView.layer.masksToBounds = true
        
        // Setup navigation bar
        self.navigationItem.title = "Log in"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        
        // Add tergets for button
        loginView.googleAuthAddTargets(target: self, action: #selector(googleButtonTapped))
        loginView.appleAuthAddTargets(target: self, action: #selector(appleButtonTapped))
    }
    
    private func signatureDelegates() {
        loginView.emailTextField.textField.delegate = self
        loginView.passwordTextField.textField.delegate = self
    }
    
    //MARK: - Objective-C methods
    
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
        static let gifImageWidth: CGFloat = 100
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
