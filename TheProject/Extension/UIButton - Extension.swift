//
//  UIButton - Extension.swift
//  TheProject
//
//  Created by Nikita on 01.12.2023.
//

import UIKit

extension UIButton {
    
    convenience init(title: String? = nil, titleColor: UIColor? = nil, backgroundColor: UIColor? = nil, cornerRadius: CGFloat? = 0, borderWidth: CGFloat? = nil, borderColor: UIColor? = nil, image: String? = nil, font: UIFont? = .boldSystemFont(ofSize: 13)) {
        self.init(type: .system)
        self.frame = .infinite
        self.tintColor = .white
        self.titleLabel?.font = font
        
        if let title = title {
            self.setTitle(title, for: .normal)
        }
        
        if let titleColor = titleColor {
            self.setTitleColor(titleColor, for: .normal)
        }
        
        if let color = backgroundColor {
            self.backgroundColor = color
        }
        
        if let radius = cornerRadius {
            self.layer.cornerRadius = radius
        }
        
        if let borderWidth = borderWidth {
            self.layer.borderWidth = borderWidth
        }
        
        if let borderColor = borderColor {
            self.layer.borderColor = borderColor.cgColor
        }
        
        if let image = image {
            let uiImage = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
            self.setImage(uiImage, for: .normal)
        }
    }
}
