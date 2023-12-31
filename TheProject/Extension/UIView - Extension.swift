//
//  UIView - Extension.swift
//  TheProject
//
//  Created by Nikita on 29.11.2023.
//

import UIKit

extension UIView {
    
    convenience init(color: UIColor? = .white) {
        self.init(frame: .infinite)
        self.backgroundColor = color
    }
    
    func addSubviews(_ view: UIView...) {
        view.forEach { views in
            views.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(views)
        }
    }
}
