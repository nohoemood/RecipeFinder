// ContentView.swift by mac 14.11.2026

import Foundation
import UIKit

final class ContentView: UIView {

    private let headerView = HeaderView()
    private let fadeView = FadeView()

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

        [headerView, fadeView].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
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
        ])
    }
}
