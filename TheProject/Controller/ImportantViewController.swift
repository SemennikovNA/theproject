//
//  ImportantViewController.swift
//  TheProject
//
//  Created by Nikita on 30.10.2023.
//

import UIKit

class ImportantViewController: UIViewController {
    
    //MARK: - Properties
    
    let importantTable = TableView()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Call function's
        setupView()
        setupConstraints()
    }
    
    //MARK: - Private methods
    
    private func setupView() {
        
        //Configure view
        view.backgroundColor = .back
        view.addSubviews(importantTable)
        
        //Configure navigation view
        let backButton = UIBarButtonItem()
        let addedButton = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addedButtonTapped))
        addedButton.tintColor = .dynamicText
        backButton.title = "На главную"
        backButton.tintColor = .black
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        self.navigationItem.rightBarButtonItem = addedButton
        self.navigationItem.title = "Важное ‼️"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
    //MARK: - Objective-C methods
    
    @objc func addedButtonTapped() {
        
    }
}

//MARK: - Extension

extension ImportantViewController {
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            // Important table
            importantTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            importantTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            importantTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            importantTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}
