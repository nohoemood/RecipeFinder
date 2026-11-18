// BaseButton.swift by mac 14.11.2026

import Foundation
import UIKit

class RectangleButton: UIButton {
    init(text: String, isActive: Bool, action: UIAction) {
        super.init(frame: .zero)

        // Configuration
        var configuration = UIButton.Configuration.filled()

        configuration.title = text
        configuration.baseForegroundColor = isActive ? AppColor.Labels.primaryInvert : AppColor.Labels.primary
        configuration.titleAlignment = .center

        configuration.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { attributes in
            var attributes = attributes
            attributes.font = AppFont.headline
            return attributes
        }

        var background = UIButton.Configuration.filled().background
        background.cornerRadius = 18
        background.backgroundColor = isActive ? UIColor(named: "AccentColor") : AppColor.Background.tertiary
        configuration.background = background

        
        self.configuration = configuration
        self.addAction(action, for: .touchUpInside)
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
