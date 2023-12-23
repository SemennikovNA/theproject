//
//  LoginViewController.swift
//  TheProject
//
//  Created by Nikita on 23.12.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - UI Elements
    
    let loginView = LoginView()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call function's
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        // Setup view
        view.addSubviews(loginView)
        view.backgroundColor = .dynamicText
        
        // Setup navigation bar
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationItem.title = "Log in"
    }
    
}

extension LoginViewController {
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            loginView.topAnchor.constraint(equalTo: view.topAnchor),
            loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            loginView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
