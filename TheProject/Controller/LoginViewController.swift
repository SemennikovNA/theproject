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
        let animation = LottieAnimationView(name: "ani")
        animation.loopMode = .repeat(15)
        animation.play()
        return animation
    }()
    
    let loginView = LoginView()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Call function's
        setupView()
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
    }
}

extension LoginViewController {
    
    enum Constans {
        static let tenPoints: CGFloat = 10
        static let twentyPoints: CGFloat = 20
        static let gifImageWidth: CGFloat = 200
        static let gifImageHeight: CGFloat = 150
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            // Gif image view
            gifImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Constans.tenPoints),
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
