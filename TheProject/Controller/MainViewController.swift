//  MainView.swift
//  TheProject
//
//  Created by Nikita on 28.10.2023.

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    let collection = CollectionView()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call functions
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        
        // Configure view
        view.backgroundColor = .back
        view.addSubviews(mainView, collection)
        
        // Configure navigation controller
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationItem.title = "Привет, Никита 🤓"

        // Configure navigation buttons
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(navigationButtonTapped))
        self.navigationItem.rightBarButtonItem?.tintColor = .dynamicText
        
        // Add target's
        mainView.taskButton.addTarget(self, action: #selector(taskButtonTapped), for: .touchUpInside)
        mainView.importantButton.addTarget(self, action: #selector(importantButtonTapped), for: .touchUpInside)
        mainView.meetingButton.addTarget(self, action: #selector(meetingButtonTapped), for: .touchUpInside)
        mainView.callingButton.addTarget(self, action: #selector(callingButtonTapped), for: .touchUpInside)
        mainView.habbitsButton.addTarget(self, action: #selector(habbitsButtonTapped), for: .touchUpInside)
    }


    //MARK: - @objc methods
    
    @objc func navigationButtonTapped() {
        let secondVC = SettingViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc func taskButtonTapped() {
        let taskVC = TaskViewController()
        navigationController?.pushViewController(taskVC, animated: true)
    }
    
    @objc func importantButtonTapped() {
        let importantVC = ImportantViewController()
        navigationController?.pushViewController(importantVC, animated: true)
    }
    
    @objc func meetingButtonTapped() {
        let meetingVC = MeetingViewController()
        navigationController?.pushViewController(meetingVC, animated: true)
    }
    
    @objc func callingButtonTapped() {
        let callingVC = CallingViewController()
        navigationController?.pushViewController(callingVC, animated: true)
    }
    
    @objc func habbitsButtonTapped() {
        let habbitsVC = HabbitsViewController()
        navigationController?.pushViewController(habbitsVC, animated: true)
    }
}

//MARK: - Extension

extension MainViewController {
    
    func setupConstraints() {
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            // Main view
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            collection.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 300),
            collection.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            collection.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}
