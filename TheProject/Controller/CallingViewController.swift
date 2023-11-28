//
//  CallingViewController.swift
//  TheProject
//
//  Created by Nikita on 30.10.2023.
//

import UIKit

class CallingViewController: UIViewController {

    //MARK: - Properties
    
    let mainVC = MainViewController()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Call function's
        configureViewElements()
    }
    
    //MARK: - Methods
    
    func configureViewElements() {
        
        //Configure view
        view.backgroundColor = .back
        
        //Configure navigation view controller
        let backButton = UIBarButtonItem()
        backButton.title = "На главную"
        backButton.tintColor = .black
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationItem.title = "Созвоны 📱"
        
    }
}
