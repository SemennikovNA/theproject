//  MainView.swift
//  TheProject
//
//  Created by Nikita on 28.10.2023.

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - UI Elements
    
    let mainView = MainView()
    let collection = CollectionView()
    
    //MARK: - Properties
    
    let collect = [
        CollectionSet(title: "Задачи 📋", view: TaskViewController()),
        CollectionSet(title: "Важное ‼️", view: ImportantViewController()),
        CollectionSet(title: "Встречи 🤝🏽", view: MeetingViewController()),
        CollectionSet(title: "Созвоны 📱", view: CallingViewController()),
        CollectionSet(title: "Привычки 🛠️", view: HabbitsViewController())
    ]
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call functions
        setupView()
        signatureDelegates()
        setupConstraints()
    }
    
    //MARK: - Private methods
    
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
        
        // Collection view
        collection.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        mainView.taskButton.addTarget(self, action: #selector(taskButtonTapped), for: .touchUpInside)
        mainView.importantButton.addTarget(self, action: #selector(importantButtonTapped), for: .touchUpInside)
        mainView.meetingButton.addTarget(self, action: #selector(meetingButtonTapped), for: .touchUpInside)
        mainView.callingButton.addTarget(self, action: #selector(callingButtonTapped), for: .touchUpInside)
        mainView.habbitsButton.addTarget(self, action: #selector(habbitsButtonTapped), for: .touchUpInside)
    }
    
    private func signatureDelegates() {
        collection.delegate = self
        collection.dataSource = self
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
    
    enum Constans {
        static let collectionHeight: CGFloat = 70
        static let topInsets: CGFloat = 300
    }
    
    func setupConstraints() {
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            // Main view
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            collection.topAnchor.constraint(equalTo: mainView.topAnchor, constant: Constans.topInsets),
            collection.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            collection.heightAnchor.constraint(equalToConstant: Constans.collectionHeight)
        ])
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collect.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.reuseID, for: indexPath) as! CustomCollectionViewCell
        cell.textLabel.text = collect[indexPath.row].title
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 55)
    }
    
}
