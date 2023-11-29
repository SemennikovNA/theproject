//  HabbitsViewController.swift
//  TheProject
//
//  Created by Nikita on 28.10.2023.

import UIKit

class HabbitsViewController: UIViewController {
    
    //MARK: - Properties
    
    let habbitsTable = TableView()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call function's
        setupView()
        setupConstraints()
    }
    
    //MARK: - Private methods
    
    private func setupView() {
        
        // Configure view
        view.backgroundColor = .back
        view.addSubviews(habbitsTable)
        
        // Configure bar button item
        let backButton = UIBarButtonItem()
        let addedButton = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addedButtonTapped))
        addedButton.tintColor = .dynamicText
        backButton.title = "На главную"
        backButton.tintColor = .black
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        self.navigationItem.rightBarButtonItem = addedButton
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationItem.title = "Привычки 🛠️"
    }
    
    //MARK: - Objective-C methods
    
    @objc func addedButtonTapped() {
        
    }
}

//MARK: - Extension

extension HabbitsViewController {
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            // Habbits table
            habbitsTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            habbitsTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            habbitsTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            habbitsTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
