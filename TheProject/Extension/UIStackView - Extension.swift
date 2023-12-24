//
//  UIStackView - Extension.swift
//  TheProject
//
//  Created by Nikita on 30.11.2023.
//

import UIKit

extension UIStackView {
    
    convenience init(axis: NSLayoutConstraint.Axis) {
        self.init(frame: .infinite)
        self.axis = axis
    }
    
    func addArrangedSubviews(_ view: UIView...) {
        view.forEach { views in
            views.translatesAutoresizingMaskIntoConstraints = false
            self.addArrangedSubview(views)
        }
    }
}
