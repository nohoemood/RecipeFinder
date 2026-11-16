// FadeView.swift by mac 16.11.2026



import Foundation
import UIKit

final class FadeView: UIView {

    override class var layerClass: AnyClass {
        CAGradientLayer.self
    }

    private var gradientLayer: CAGradientLayer {
        layer as! CAGradientLayer
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

    // MARK: UI -
    private func setupUI() {
        backgroundColor = .clear
        translatesAutoresizingMaskIntoConstraints = false

        gradientLayer.locations = [0.0, 0.96]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)

        updateGradientColors()

        if #available(iOS 17.0, *) {
            registerForTraitChanges([UITraitUserInterfaceStyle.self]) { (self: Self, previousTraitCollection) in
                self.updateGradientColors()
            }
        }
    }

    // MARK: Appearance -
    private func updateGradientColors() {
        let backgroundColor = AppColor.Background.primary!.resolvedColor(with: traitCollection)

        gradientLayer.colors = [UIColor.clear.cgColor, backgroundColor.cgColor]
    }
}
