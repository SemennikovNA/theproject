//
//  TaskViewController.swift
//  TheProject
//
//  Created by Nikita on 30.10.2023.
//

import UIKit

class TaskViewController: UIViewController {
    
    //MARK: - Properties
    
    let mainVC = MainView()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Call function's
        configureViewElements()
    }
    
    //MARK: - Methods
    
    func configureViewElements() {
        //Configure view
        view.backgroundColor = mainVC.greenBackgroundColor
        
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
