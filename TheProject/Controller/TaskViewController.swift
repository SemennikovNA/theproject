//
//  TaskViewController.swift
//  TheProject
//
//  Created by Nikita on 30.10.2023.
//

import UIKit

class TaskViewController: UIViewController {
    
    //MARK: - UI elements
    
    var taskTable = TableView()
    
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
        view.addSubviews(taskTable)
        
        //Configure navigation controller
        let backButton = UIBarButtonItem()
        let addedButton = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addedButtonTapped))
        addedButton.tintColor = .dynamicText
        backButton.title = "На главную"
        backButton.tintColor = .dynamicText
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        self.navigationItem.rightBarButtonItem = addedButton
        self.navigationItem.title = "Задачи 📋"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
    //MARK: - Objective-C methods
    
    @objc func addedButtonTapped() {
        let addedVC = AddedViewController()
        addedVC.modalTransitionStyle = .flipHorizontal
        addedVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(addedVC, animated: true)
    }
}

//MARK: - Extension

extension TaskViewController {
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            // Task table
            taskTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            taskTable.leftAnchor.constraint(equalTo: view.leftAnchor),
            taskTable.rightAnchor.constraint(equalTo: view.rightAnchor),
            taskTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
