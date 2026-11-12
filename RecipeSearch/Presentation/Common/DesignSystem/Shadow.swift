// Shadow.swift by mac 12.11.2026 

import Foundation
import UIKit

struct Shadow {
    let color: UIColor
    let radius: CGFloat
    let offset: CGSize

    // MARK: Ready shadow -
    static let card = Shadow(color: AppColor.Shadows.primary!, radius: 12, offset: CGSize(width: 0, height: 4))
}
