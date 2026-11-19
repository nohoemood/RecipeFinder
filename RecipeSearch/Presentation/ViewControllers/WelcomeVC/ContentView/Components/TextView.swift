// TextStack.swift by mac 17.11.2026 

import Foundation
import UIKit

final class TextView: UIView {
    
    // MARK: UI -
    private let titleLabel = Label(text: "Recipe search",
                                   font: AppFont.largeTitle,
                                   textColor: AppColor.Labels.primary!,
                                   textAlignment: .center,
                                   isMultiLine: false)
    private let bodyLabel = Label(text: "Find dishes by ingredient or cuisine and keep the ones you love",
                                  font: AppFont.body,
                                  textColor: AppColor.Labels.secondary!,
                                  textAlignment: .center,
                                  isMultiLine: true,
                                  lineHeight: 22)

    private lazy var textStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleLabel, bodyLabel])
        
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 8
        
        stack.isLayoutMarginsRelativeArrangement = true
        stack.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 12, leading: 24, bottom: 8, trailing: 24)

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
        addSubview(textStack)
        
        NSLayoutConstraint.activate([
            textStack.topAnchor.constraint(equalTo: topAnchor),
            textStack.bottomAnchor.constraint(equalTo: bottomAnchor),
            textStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            textStack.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
}
