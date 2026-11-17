// HeaderView.swift by mac 16.11.2026

import Foundation
import UIKit

final class HeaderView: UIView {
    
    // MARK: UI -
    private let imageView1 = ImageView(imageName: "Bulgarian Green Salad", contentMode: .scaleAspectFill)
    private let imageView2 = ImageView(imageName: "Chicken wings with cumin, lemon & garlic", contentMode: .scaleAspectFill)
    private let imageView3 = ImageView(imageName: "Classic Potato Salad", contentMode: .scaleAspectFill)
    private let imageView4 = ImageView(imageName: "Portuguese prego with green piri-piri", contentMode: .scaleAspectFill)
    private let imageView5 = ImageView(imageName: "Shakshuka Feta Cheese", contentMode: .scaleAspectFill)
    private let imageView6 = ImageView(imageName: "Squash linguine", contentMode: .scaleAspectFill)
    private let imageView7 = ImageView(imageName: "Tonkatsu pork", contentMode: .scaleAspectFill)
    private let imageView8 = ImageView(imageName: "Vietnamese chicken salad", contentMode: .scaleAspectFill)
    private let imageView9 = ImageView(imageName: "Walnut, date & honey cake", contentMode: .scaleAspectFill)
    
    private lazy var leftStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [imageView1, imageView2, imageView3])
        
        stack.axis = .vertical
        stack.spacing = 12
        
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var middleStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [imageView4, imageView5, imageView6])
        
        stack.axis = .vertical
        stack.spacing = 12
        
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var rightStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [imageView7, imageView8, imageView9])
        
        stack.axis = .vertical
        stack.spacing = 12
        
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    // MARK: Init -
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Functions -
    private func setupUI() {
        backgroundColor = /*.red*/ .clear
        
        [leftStack, middleStack, rightStack].forEach { stack in addSubview(stack) }
        NSLayoutConstraint.activate([
            leftStack.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            leftStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            leftStack.heightAnchor.constraint(equalToConstant: 534),
                        
            middleStack.topAnchor.constraint(equalTo: topAnchor),
            middleStack.leadingAnchor.constraint(equalTo: leftStack.trailingAnchor, constant: 10),
            middleStack.widthAnchor.constraint(equalTo: leftStack.widthAnchor),
            middleStack.heightAnchor.constraint(equalToConstant: 534),

            rightStack.topAnchor.constraint(equalTo: topAnchor, constant: 80),
            rightStack.leadingAnchor.constraint(equalTo: middleStack.trailingAnchor, constant: 10),
            rightStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            rightStack.widthAnchor.constraint(equalTo: leftStack.widthAnchor),
            rightStack.heightAnchor.constraint(equalToConstant: 534),
        ])
    }
}
