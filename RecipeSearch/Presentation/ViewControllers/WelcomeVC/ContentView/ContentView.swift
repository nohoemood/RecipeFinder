// ContentView.swift by mac 14.11.2026

import Foundation
import UIKit

final class ContentView: UIView {

    private let headerView = HeaderView()
    private let fadeView = FadeView()
    private let appLogo = ImageView(imageName: "LaunchLogo", contentMode: .scaleToFill)
    
    private let textView = TextView()
    
    private lazy var buttonsView = ButtonsView(createAccAction: createAccAction, logInAction: logInAction)
    
    // MARK: Actions -
    private lazy var createAccAction: UIAction = UIAction { [weak self] action in
        guard let self = self, let sender = action.sender as? UIButton else { return }
        //
    }
    
    private lazy var logInAction: UIAction = UIAction { [weak self] action in
        guard let self = self, let sender = action.sender as? UIButton else { return }
        //
    }
    
    // MARK: Init -
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Functions -
    private func setupUI() {
        backgroundColor = AppColor.Background.primary

        addSubview(headerView)
        headerView.addSubview(fadeView)
        fadeView.addSubview(appLogo)

        [textView, buttonsView].forEach { view in
            addSubview(view)
        }
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: topAnchor, constant: -96),
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -4),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 4),
            headerView.heightAnchor.constraint(equalToConstant: 614),
            
            fadeView.topAnchor.constraint(equalTo: headerView.topAnchor),
            fadeView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
            fadeView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor),
            fadeView.bottomAnchor.constraint(equalTo: headerView.bottomAnchor),
            
            appLogo.bottomAnchor.constraint(equalTo: headerView.bottomAnchor),
            appLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            appLogo.widthAnchor.constraint(equalToConstant: 100),
            appLogo.heightAnchor.constraint(equalToConstant: 100),
            
            textView.topAnchor.constraint(equalTo: appLogo.bottomAnchor),
            textView.leadingAnchor.constraint(equalTo: leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            buttonsView.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 43),
            buttonsView.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            buttonsView.heightAnchor.constraint(equalToConstant: 116),
        ])
    }
}
