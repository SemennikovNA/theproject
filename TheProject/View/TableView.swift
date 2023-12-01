//
//  TableView.swift
//  TheProject
//
//  Created by Nikita on 29.11.2023.
//

import UIKit

protocol TableViewSwipe {
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
}

class TableView: UITableView {
    
    //MARK: - Initialize
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
        setupTableView()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private methods
    
    private func setupTableView() {
        self.backgroundColor = .back
        self.register(CustomTableViewCell.self, forCellReuseIdentifier: "Cell")
        self.translatesAutoresizingMaskIntoConstraints = false
        self.delegate = self
    }
}

extension TableView {
    
    func makeConstraints() {
        
        //Table view
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: self.topAnchor),
            self.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}

extension TableView: UITableViewDelegate {
    
    //MARK: Table view data source and delegate methods
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
//        cell.backgroundColor = .back
//        cell.taskLabel.text = "Test"
//        cell.descriptionLabel.text = "Test"
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 80
//    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let done = UIContextualAction(style: .normal, title: "Выполнено") { (contextualAction, view, boolValue) in
            print("Выполнено")
        }
        let favorites = UIContextualAction(style: .normal, title: "Избраное") { (contextualAction, view, boolValue) in
            print("Добавлено в избраное")
        }
        done.backgroundColor = .systemGreen
        favorites.backgroundColor = .purple
        favorites.image = UIImage(systemName: "star.fill")
        let swipe = UISwipeActionsConfiguration(actions: [done, favorites])
        return swipe
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteButton = UIContextualAction(style: .destructive, title: "Удалить") { (contextualAction, view, boolValue) in
        }
        let swipe = UISwipeActionsConfiguration(actions: [deleteButton])
        return swipe
    }
}
