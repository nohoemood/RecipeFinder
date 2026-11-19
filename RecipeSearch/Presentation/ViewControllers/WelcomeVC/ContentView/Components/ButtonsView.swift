// ButtonsView.swift by mac 19.11.2026 

import Foundation
import UIKit

final class ButtonsView: UIView {
    
    private let createAccAction: UIAction
    private let logInAction: UIAction
    private let demoAccAction: UIAction
    
    // MARK: UI -
    private lazy var createAccButton = RectangleButton(text: "Create account",
                                                       isActive: true,
                                                       action: createAccAction)
    private lazy var logInButton = RectangleButton(text: "Log in",
                                                   isActive: false,
                                                   action: logInAction)
    private lazy var demoAccButton = TextButton(text: "Try the demo account",
                                                   isActive: false,
                                                   action: demoAccAction)
    
    private lazy var buttonStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [createAccButton, logInButton, demoAccButton])
        
        stack.axis = .vertical
        stack.spacing = 12
        stack.alignment = .fill
        stack.distribution = .fill
        
        stack.isLayoutMarginsRelativeArrangement = true
        stack.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    // MARK: Init -
    init(actions: [UIAction]) {
        self.createAccAction = actions[0]
        self.logInAction = actions[1]
        self.demoAccAction = actions[2]
        
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        buttonStackView.layoutIfNeeded()

        print("ButtonsView:", bounds)
        print("StackView:", buttonStackView.frame)
        print("Create button:", createAccButton.frame)
        print("Log in button:", logInButton.frame)
    }

    // MARK: Functions -
    private func setupUI() {
        addSubview(buttonStackView)
        
        NSLayoutConstraint.activate([
            buttonStackView.topAnchor.constraint(equalTo: topAnchor),
            buttonStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            createAccButton.heightAnchor.constraint(equalToConstant: 52),
            logInButton.heightAnchor.constraint(equalTo: createAccButton.heightAnchor),
            demoAccButton.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
}
