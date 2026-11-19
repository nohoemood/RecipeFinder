// BodyLabel.swift by mac 14.11.2026

import Foundation
import UIKit

class Label: UILabel {
    init(text: String, font: UIFont, textColor: UIColor, textAlignment: NSTextAlignment, isMultiLine: Bool, lineHeight: CGFloat? = nil) {
        super.init(frame: .zero)

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = textAlignment
        
        if let uwLineHeight = lineHeight {
            paragraphStyle.minimumLineHeight = uwLineHeight
            paragraphStyle.maximumLineHeight = uwLineHeight
        }
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: textColor,
            .paragraphStyle: paragraphStyle,
        ]
        
        let attributedText = NSAttributedString(string: text, attributes: attributes)
        self.attributedText = attributedText
        
        self.numberOfLines = isMultiLine == true ? 0 : 1
        self.lineBreakMode = isMultiLine ? .byWordWrapping : .byTruncatingTail
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
