//
//  TabBarController.swift
//  TheProject
//
//  Created by Nikita on 23.01.2024.
//

import UIKit

final class TabBarController: UITabBarController {

    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBar()
    }
    
    //MARK: - Private methods
    
    private func setupTabBar() {
        viewControllers = [
        setupViewControllers(viewController: MainViewController(), title: "Main", image: nil),
        setupViewControllers(viewController: TaskViewController(), title: "Task", image: nil),
        setupViewControllers(viewController: AddedViewController(), title: "Added", image: nil)
        ]
    }

    private func setupViewControllers(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
}
