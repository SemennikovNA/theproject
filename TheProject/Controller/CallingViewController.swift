//
//  CallingViewController.swift
//  TheProject
//
//  Created by Nikita on 30.10.2023.
//

import UIKit

class CallingViewController: UIViewController {

    //MARK: - Properties
    
    let callingTable = TableView()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Call function's
        setupView()
        setupConstraints()
    }
    
    //MARK: - Methods
    
    func setupView() {
        
        //Configure view
        view.backgroundColor = .back
        view.addSubviews(callingTable)
        
        //Configure navigation view controller
        let backButton = UIBarButtonItem()
        let addedButton = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addedButtonTapped))
        addedButton.tintColor = .dynamicText
        backButton.title = "На главную"
        backButton.tintColor = .dynamicText
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        self.navigationItem.rightBarButtonItem = addedButton
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationItem.title = "Созвоны 📱"
        
    }
    
    //MARK: - Objective-C methods
    
    @objc func addedButtonTapped() {
        
    }
}

//MARK: - Extension

extension CallingViewController {
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            // Calling table
            callingTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            callingTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            callingTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            callingTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
