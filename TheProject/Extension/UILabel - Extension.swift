//
//  UILabel - Extension.swift
//  TheProject
//
//  Created by Nikita on 08.12.2023.
//

import UIKit

extension UILabel {
    
    convenience init(text: String?, font: UIFont?, textColor: UIColor?) {
        self.init(frame: .infinite)
        self.text = text
        self.font = font
        self.textColor = textColor
    }
}
