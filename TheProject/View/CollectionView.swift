//
//  CollectionView.swift
//  TheProject
//
//  Created by Nikita on 08.12.2023.
//

import UIKit

class CollectionView: UICollectionView {
    
    let collect = [
        CollectionSet(title: "Задачи 📋", view: TaskViewController()),
        CollectionSet(title: "Важное ‼️", view: ImportantViewController()),
        CollectionSet(title: "Встречи 🤝🏽", view: MeetingViewController()),
        CollectionSet(title: "Созвоны 📱", view: CallingViewController()),
        CollectionSet(title: "Привычки 🛠️", view: HabbitsViewController())
    ]
    
    //MARK: - Initialize
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell() {
        delegate = self
        dataSource = self
        register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.reuseID)
    }
}

extension CollectionView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collect.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.reuseID, for: indexPath)
        
        return cell
    }
    
    
}
