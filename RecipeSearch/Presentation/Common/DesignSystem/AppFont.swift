// AppFont.swift by mac 12.11.2026

import Foundation
import UIKit

enum AppFont {
    // MARK: Main fonts -
    static let largeTitle = scaled(.systemFont(ofSize: 34, weight: .bold), .largeTitle)
    static let title1 = scaled(.systemFont(ofSize: 28, weight: .bold), .title1)
    static let title2 = scaled(.systemFont(ofSize: 22, weight: .bold), .title2)
    static let title3 = scaled(.systemFont(ofSize: 20, weight: .semibold), .title3)
    static let headline = scaled(.systemFont(ofSize: 17, weight: .semibold), .headline)
    static let body = scaled(.systemFont(ofSize: 17, weight: .regular), .body)
    static let callout = scaled(.systemFont(ofSize: 16, weight: .regular), .callout)
    static let subheadline = scaled(.systemFont(ofSize: 15, weight: .regular), .subheadline)
    static let footnote = scaled(.systemFont(ofSize: 13, weight: .regular), .footnote)
    static let caption1 = scaled(.systemFont(ofSize: 12, weight: .regular), .caption1)

    // MARK: Custom fonts -
    static let cookingStep = scaled(.systemFont(ofSize: 26, weight: .medium), .title1)
    static let cardTitle = scaled(rounded(size: 17, weight: .semibold), .headline)
    static let cardCaption = scaled(rounded(size: 13, weight: .medium), .footnote)

    // MARK: Functions -
    private static func rounded(size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let base = UIFont.systemFont(ofSize: size, weight: weight)
        guard let descriptor = base.fontDescriptor.withDesign(.rounded) else { return base }
        return UIFont(descriptor: descriptor, size: size)
    }

    private static func scaled(_ font: UIFont, _ style: UIFont.TextStyle) -> UIFont {
        UIFontMetrics(forTextStyle: style).scaledFont(for: font)
    }
}
