//
//  RegistrationViewController.swift
//  TheProject
//
//  Created by Nikita on 22.01.2024.
//

import UIKit
import Lottie

final class RegistrationViewController: UIViewController {
    
    //MARK: - User intersface elements
    
    private lazy var gifImage: LottieAnimationView = {
        let animation = LottieAnimationView(name: "registr")
        animation.loopMode = .loop
        animation.play()
        animation.contentMode = .scaleAspectFill
        return animation
    }()
    let registrationView = RegistrationView()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call method's
        setupView()
        setupConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        registrationView.layoutIfNeeded()
    }
    
    //MARK: - Private methods
    
    private func setupView() {
        // Setup view
        view.addSubviews(gifImage, registrationView)
        view.backgroundColor = .white
        
        // Setup navigation bar
        self.navigationItem.title = "Registration"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        
        // Call method's
        setupRegistrationView()
    }
    
    private func setupRegistrationView() {
        // Setup registration view
        registrationView.layer.cornerRadius = 20
        
        // Add targets for button
        registrationView.registerButtonTapped(target: self, action: #selector(registerButtonTapped))
    }
    
    //MARK: - Objective - C methods
    
    @objc func registerButtonTapped() {
        print("Register")
    }
    
}
enum Constans {
    
    static let tenPoints: CGFloat = 10
    static let twentyPoints: CGFloat = 20
    static let gifImageWidth: CGFloat = 100
    static let gifImageHeight: CGFloat = 80
    
}

private extension RegistrationViewController {
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            // Gif image view
            gifImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -Constans.twentyPoints),
            gifImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gifImage.heightAnchor.constraint(equalToConstant: Constans.gifImageHeight),
            gifImage.widthAnchor.constraint(equalToConstant: Constans.gifImageWidth),
            
            registrationView.topAnchor.constraint(equalTo: gifImage.bottomAnchor, constant: Constans.twentyPoints),
            registrationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            registrationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            registrationView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
