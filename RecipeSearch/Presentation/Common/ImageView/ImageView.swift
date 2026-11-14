// ImageView.swift by mac 15.11.2026 

import Foundation
import UIKit

class ImageView: UIImageView {
    init(imageName: String) {
        super.init(frame: .zero)
        
        self.image = UIImage(named: imageName)
        self.contentMode = .scaleAspectFill
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
