//  MainView.swift
//  TheProject
//
//  Created by Nikita on 28.10.2023.

import UIKit

class MainView: UIViewController {
    
    //MARK: - Properties
    /// Background colors
    let greenBackgroundColor = UIColor(red: 79 / 255, green: 111 / 255, blue: 82 / 255, alpha: 1)
    let callingButonColor = UIColor(red: 236 / 255, green: 227 / 255, blue: 206 / 255, alpha: 1)
    let customLightGreen = UIColor(red: 115 / 255, green: 144 / 255, blue: 114 / 255, alpha: 1)
    let taskButtonColor = UIColor(red: 157 / 255, green: 178 / 255, blue: 191 / 255, alpha: 1)
    let importantButtonColor = UIColor(red: 252 / 155, green: 200 / 255, blue: 209 / 255, alpha: 1)
    let meetingButtonColor = UIColor(red: 255 / 255, green: 217 / 255, blue: 102 / 255, alpha: 1)
    let habbitsButtonColor = UIColor(red: 159 / 255, green: 192 / 255, blue: 136 / 255, alpha: 1)
    
    //MARK: - UI Elements
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.frame = .zero
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let horizontalScroll: UIScrollView = {
        let scroll = UIScrollView()
        scroll.frame = .zero
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.bounces = true
        scroll.alwaysBounceHorizontal = true
        scroll.showsHorizontalScrollIndicator = false
        scroll.layer.cornerRadius = 25
        scroll.clipsToBounds = true
        scroll.layer.borderColor = UIColor.black.cgColor
        scroll.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 730)
        scroll.contentOffset = CGPoint(x: 0, y: 0)
        return scroll
    }()
    
    let taskButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.frame = .zero
        but.setTitle("Задачи 📋", for: .normal)
        but.titleLabel?.textAlignment = .center
        but.setTitleColor(.black, for: .normal)
        but.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        but.layer.cornerRadius = 15
        but.layer.borderWidth = 1
        but.layer.borderColor = UIColor.black.cgColor
        but.clipsToBounds = true
        return but
    }()
    
    let importantButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.frame = .zero
        but.setTitle("Важное ‼️", for: .normal)
        but.titleLabel?.textAlignment = .center
        but.setTitleColor(.black, for: .normal)
        but.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        but.layer.cornerRadius = 15
        but.layer.borderWidth = 1
        but.layer.borderColor = UIColor.black.cgColor
        but.clipsToBounds = true
        return but
    }()
    
    let meetingButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.frame = .zero
        but.setTitle("Встречи 🤝🏽", for: .normal)
        but.titleLabel?.textAlignment = .center
        but.setTitleColor(.black, for: .normal)
        but.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        but.layer.cornerRadius = 15
        but.layer.borderWidth = 1
        but.layer.borderColor = UIColor.black.cgColor
        but.clipsToBounds = true
        return but
    }()
    
    let callingButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.frame = .zero
        but.setTitle("Созвоны 📱", for: .normal)
        but.titleLabel?.textAlignment = .center
        but.setTitleColor(.black, for: .normal)
        but.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        but.layer.cornerRadius = 15
        but.layer.borderWidth = 1
        but.layer.borderColor = UIColor.black.cgColor
        but.clipsToBounds = true
        return but
    }()
    
    let habbitsButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.frame = .zero
        but.setTitle("Привычки 🛠️", for: .normal)
        but.titleLabel?.textAlignment = .center
        but.setTitleColor(.black, for: .normal)
        but.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        but.layer.cornerRadius = 15
        but.layer.borderWidth = 1
        but.layer.borderColor = UIColor.black.cgColor
        but.clipsToBounds = true
        return but
    }()
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call functions
        configureViewElements()
//        nowDate()
        addSubviews()
        makeConstraint()
        
    }
    
    //MARK: - Private methods
    
    private func configureViewElements() {
        
        // Configure main view
        view.backgroundColor = greenBackgroundColor
        horizontalScroll.backgroundColor = customLightGreen
        taskButton.backgroundColor = taskButtonColor
        importantButton.backgroundColor = importantButtonColor
        meetingButton.backgroundColor = meetingButtonColor
        callingButton.backgroundColor = callingButonColor
        habbitsButton.backgroundColor = habbitsButtonColor
        
        // Addeds targer
        taskButton.addTarget(self, action: #selector(taskButtonTapped), for: .touchUpInside)
        importantButton.addTarget(self, action: #selector(importantButtonTapped), for: .touchUpInside)
        meetingButton.addTarget(self, action: #selector(meetingButtonTapped), for: .touchUpInside)
        callingButton.addTarget(self, action: #selector(callingButtonTapped), for: .touchUpInside)
        habbitsButton.addTarget(self, action: #selector(habbitsButtonTapped), for: .touchUpInside)
        
        // Configure navigation controller
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Привет, Никита 🤓"
        self.navigationItem.largeTitleDisplayMode = .always
        // Configure navigation buttons
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(navigationButtonTapped))
        self.navigationItem.rightBarButtonItem?.tintColor = callingButonColor
    }
    
    private func addSubviews() {
        view.addSubview(infoLabel)
        view.addSubview(horizontalScroll)
        horizontalScroll.addSubview(taskButton)
        horizontalScroll.addSubview(importantButton)
        horizontalScroll.addSubview(meetingButton)
        horizontalScroll.addSubview(callingButton)
        horizontalScroll.addSubview(habbitsButton)
        
    }
    
//    private func nowDate() {
//        
//        let now = Date()
//        let dtFormatter = DateFormatter()
//        
//        dtFormatter.dateStyle = .medium
//        dtFormatter.timeStyle = .short
//        
//        let dateTimeFormated = dtFormatter.string(from: now)
//        infoLabel.text = "\(dateTimeFormated)"
//    }

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

extension MainView {
    
    //MARK: - NSLayout methods
    
    func makeConstraint() {
        
        let buttonsSize: CGSize = CGSize(width: 140, height: 55)
        
        // Info label
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            infoLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            infoLabel.heightAnchor.constraint(equalToConstant: 30),
            infoLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        // Content stack
        NSLayoutConstraint.activate([
            horizontalScroll.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 10),
            horizontalScroll.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            horizontalScroll.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            horizontalScroll.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        // Task button
        NSLayoutConstraint.activate([
            taskButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            taskButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            taskButton.leftAnchor.constraint(equalTo: horizontalScroll.leftAnchor, constant: 5),
            taskButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor)
        ])
        
        // Important button
        NSLayoutConstraint.activate([
            importantButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            importantButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            importantButton.leftAnchor.constraint(equalTo: taskButton.rightAnchor, constant: 5),
            importantButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor)
        ])
        
        // Meeting button
        NSLayoutConstraint.activate([
            meetingButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            meetingButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            meetingButton.leftAnchor.constraint(equalTo: importantButton.rightAnchor, constant: 5),
            meetingButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor)
        ])
        
        // Calling button
        NSLayoutConstraint.activate([
            callingButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            callingButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            callingButton.leftAnchor.constraint(equalTo: meetingButton.rightAnchor, constant: 5),
            callingButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor)
        ])
        
        // Habbits button
        NSLayoutConstraint.activate([
            habbitsButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            habbitsButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            habbitsButton.leftAnchor.constraint(equalTo: callingButton.rightAnchor, constant: 5),
            habbitsButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor)
        ])
    }
}
