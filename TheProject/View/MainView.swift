//
//  MainView.swift
//  TheProject
//
//  Created by Nikita on 29.11.2023.
//

import UIKit

class MainView: UIView {
    
    //MARK: - UI Elements
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.frame = .zero
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .dynamicText
        return label
    }()
    
    private lazy var horizontalScroll: UIScrollView = {
        let scroll = UIScrollView()
        scroll.frame = .zero
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.backgroundColor = .scrollBack
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
        but.backgroundColor = .task
        but.setTitle("Задачи 📋", for: .normal)
        but.titleLabel?.textAlignment = .center
        but.setTitleColor(.dynamicText, for: .normal)
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
        but.backgroundColor = .important
        but.setTitle("Важное ‼️", for: .normal)
        but.titleLabel?.textAlignment = .center
        but.setTitleColor(.dynamicText, for: .normal)
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
        but.backgroundColor = .meeting
        but.setTitleColor(.dynamicText, for: .normal)
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
        but.backgroundColor = .calling
        but.setTitleColor(.dynamicText, for: .normal)
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
        but.backgroundColor = .habbits
        but.setTitleColor(.dynamicText, for: .normal)
        but.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        but.layer.cornerRadius = 15
        but.layer.borderWidth = 1
        but.layer.borderColor = UIColor.black.cgColor
        but.clipsToBounds = true
        return but
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Call function's
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private methods

        // Addeds targer
//        taskButton.addTarget(self, action: #selector(taskButtonTapped), for: .touchUpInside)
//        importantButton.addTarget(self, action: #selector(importantButtonTapped), for: .touchUpInside)
//        meetingButton.addTarget(self, action: #selector(meetingButtonTapped), for: .touchUpInside)
//        callingButton.addTarget(self, action: #selector(callingButtonTapped), for: .touchUpInside)
//        habbitsButton.addTarget(self, action: #selector(habbitsButtonTapped), for: .touchUpInside)
    
    private func setupView() {
        self.addSubview(infoLabel)
        self.addSubview(horizontalScroll)
        horizontalScroll.addSubview(taskButton)
        horizontalScroll.addSubview(importantButton)
        horizontalScroll.addSubview(meetingButton)
        horizontalScroll.addSubview(callingButton)
        horizontalScroll.addSubview(habbitsButton)
        
    }
}


//MARK: - Extension

extension MainView {
    
    func setupConstraints() {
        
        let buttonsSize: CGSize = CGSize(width: 140, height: 55)
        
        // Info label
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            infoLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            infoLabel.heightAnchor.constraint(equalToConstant: 30),
            infoLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        // Content stack
        NSLayoutConstraint.activate([
            horizontalScroll.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 10),
            horizontalScroll.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            horizontalScroll.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15),
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
