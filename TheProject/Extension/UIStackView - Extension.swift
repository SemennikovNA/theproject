//
//  UIStackView - Extension.swift
//  TheProject
//
//  Created by Nikita on 30.11.2023.
//

import UIKit

extension UIStackView {
    
    func addArrangedSubviews(_ view: UIView...) {
        view.forEach { views in
            views.translatesAutoresizingMaskIntoConstraints = false
            self.addArrangedSubview(views)
        }
    }
}
