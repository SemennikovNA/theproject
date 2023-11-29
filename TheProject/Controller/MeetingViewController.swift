//
//  MeetingViewController.swift
//  TheProject
//
//  Created by Nikita on 30.10.2023.
//

import UIKit

class MeetingViewController: UIViewController {

    //MARK: - Properties
    
    let meetingTable = TableView()
    
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
        view.addSubviews(meetingTable)
        
        //Configure navigation view controller
        let backButton = UIBarButtonItem()
        let addedButton = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addedButtonTapped))
        addedButton.tintColor = .dynamicText
        backButton.title = "На главную"
        backButton.tintColor = .black
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        self.navigationItem.rightBarButtonItem = addedButton
        self.navigationItem.title = "Встречи 🤝🏽"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
    //MARK: - Objective-C methods
    
    @objc func addedButtonTapped() {
        
    }
}

//MARK: - Extension

extension MeetingViewController {
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            // Meeting table
            meetingTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            meetingTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            meetingTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            meetingTable.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
