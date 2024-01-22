//
//  AddedViewController.swift
//  TheProject
//
//  Created by Nikita on 30.11.2023.
//

import UIKit

class AddedViewController: UIViewController {
    
    //MARK: - Properties
    
    let addedView = AddedView()
    
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
        view.addSubviews(addedView)
        
        // Configure navigation bar
        
        // Configure added button
        addedView.addedButtonAddTarget(self, selector: #selector(addedButtonTapped))
    }
    
    //MARK: - Objective-C methods
     
    @objc func addedButtonTapped() {
        let taskVC = TaskViewController()
        taskVC.modalTransitionStyle = .flipHorizontal
        guard let task = addedView.taskTextField.text, let description = addedView.descriptionTextField.text else { return }
        print(task, description)
    }
}

extension AddedViewController {
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            // Added view
            addedView.topAnchor.constraint(equalTo: view.topAnchor),
            addedView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            addedView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            addedView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}


#Preview() {
    AddedViewController()
}
