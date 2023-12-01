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
    
    var taskButton = UIButton()
    var importantButton = UIButton()
    var meetingButton = UIButton()
    var callingButton = UIButton()
    var habbitsButton = UIButton()
    
    
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
        taskButton = UIButton(title: "Задачи 📋", titleColor: .dynamicText, backgroundColor: .task, cornerRadius: 15, borderWidth: 1, borderColor: .black, image: nil, fontSize: 20, font: .bold)
        importantButton = UIButton(title: "Важное ‼️", titleColor: .dynamicText, backgroundColor: .important, cornerRadius: 15, borderWidth: 1, borderColor: .black, image: nil, fontSize: 20, font: .bold)
        meetingButton = UIButton(title: "Встречи 🤝🏽", titleColor: .dynamicText, backgroundColor: .meeting, cornerRadius: 15, borderWidth: 1, borderColor: .black, image: nil, fontSize: 20, font: .bold)
        callingButton = UIButton(title: "Созвоны 📱", titleColor: .dynamicText, backgroundColor: .calling, cornerRadius: 15, borderWidth: 1, borderColor: .black, image: nil, fontSize: 20, font: .bold)
        habbitsButton = UIButton(title: "Привычки 🛠️", titleColor: .dynamicText, backgroundColor: .habbits, cornerRadius: 15, borderWidth: 1, borderColor: .black, image: nil, fontSize: 20, font: .bold)
        self.addSubviews(infoLabel, horizontalScroll)
        horizontalScroll.addSubviews(taskButton, importantButton, meetingButton, callingButton, habbitsButton)
    }
}


//MARK: - Extension

extension MainView {
    
    func setupConstraints() {
        
        let buttonsSize: CGSize = CGSize(width: 140, height: 55)
        
        NSLayoutConstraint.activate([
            // Info label
            infoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            infoLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            infoLabel.heightAnchor.constraint(equalToConstant: 30),
            infoLabel.widthAnchor.constraint(equalToConstant: 250),
            
            // Horizontal scroll
            horizontalScroll.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 10),
            horizontalScroll.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            horizontalScroll.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15),
            horizontalScroll.heightAnchor.constraint(equalToConstant: 70),
            
            // Task button
            taskButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            taskButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            taskButton.leftAnchor.constraint(equalTo: horizontalScroll.leftAnchor, constant: 5),
            taskButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor),
            
            // Important button
            importantButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            importantButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            importantButton.leftAnchor.constraint(equalTo: taskButton.rightAnchor, constant: 5),
            importantButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor),
            
            // Meeting button
            meetingButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            meetingButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            meetingButton.leftAnchor.constraint(equalTo: importantButton.rightAnchor, constant: 5),
            meetingButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor),
            
            // Calling button
            callingButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            callingButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            callingButton.leftAnchor.constraint(equalTo: meetingButton.rightAnchor, constant: 5),
            callingButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor),
            
            // Habbits button
            habbitsButton.heightAnchor.constraint(equalToConstant: buttonsSize.height),
            habbitsButton.widthAnchor.constraint(equalToConstant: buttonsSize.width),
            habbitsButton.leftAnchor.constraint(equalTo: callingButton.rightAnchor, constant: 5),
            habbitsButton.centerYAnchor.constraint(equalTo: horizontalScroll.centerYAnchor)
        ])
    }
}
