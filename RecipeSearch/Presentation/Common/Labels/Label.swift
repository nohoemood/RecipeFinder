// BodyLabel.swift by mac 14.11.2026 

import Foundation
import UIKit

class Label: UILabel {
    init(text: String, font: UIFont) {
        super.init(frame: .zero)
        
        self.text = text
        self.textColor = AppColor.Labels.secondary
        self.font = font
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
