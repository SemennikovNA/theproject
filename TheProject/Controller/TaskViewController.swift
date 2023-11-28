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
        configureViewElements()
        setupConstraints()
    }
    
    //MARK: - Methods
    
    func configureViewElements() {
        //Configure view
        view.backgroundColor = .back
        view.addSubview(taskTable)
        
        //Configure navigation controller
        let backButton = UIBarButtonItem()
        backButton.title = "На главную"
        backButton.tintColor = .black
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        self.navigationItem.title = "Задачи 📋"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
    }
}

extension TaskViewController {
    
    func setupConstraints() {
        
        taskTable.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
                taskTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
                taskTable.leftAnchor.constraint(equalTo: view.leftAnchor),
                taskTable.rightAnchor.constraint(equalTo: view.rightAnchor),
                taskTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}



