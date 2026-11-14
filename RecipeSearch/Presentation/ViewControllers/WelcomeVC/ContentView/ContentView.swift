// ContentView.swift by mac 14.11.2026

import Foundation
import UIKit

final class ContentView: UIView {

    // MARK: Init -
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: UI -
    private func setupUI() {
        backgroundColor = AppColor.Background.primary
    }
}
