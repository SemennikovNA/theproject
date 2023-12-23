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
    
    let emailLabel = CustomLabel(text: "E-mail", font: .boldSystemFont(ofSize: 20), color: .dynamicText)
    let passwordLabel = CustomLabel(text: "Password", font: .boldSystemFont(ofSize: 20), color: .dynamicText)
    
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
        addSubviews(backgroundImage, emailLabel, passwordLabel)

    }
}

extension LoginView {
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            // Background image
            backgroundImage.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            // Email label
            emailLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 100),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            emailLabel.heightAnchor.constraint(equalToConstant: 40),
            emailLabel.widthAnchor.constraint(equalToConstant: 140),
            
            // Password label
            passwordLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 250),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            passwordLabel.heightAnchor.constraint(equalToConstant: 40),
            passwordLabel.widthAnchor.constraint(equalToConstant: 140),
        ])
    }
}

#Preview() {
    LoginViewController()
}
