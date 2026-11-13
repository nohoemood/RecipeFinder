// AppColor.swift by mac 12.11.2026 

import Foundation
import UIKit

enum AppColor {
    // MARK: Backgoround -
    enum Background {
        static let primary = UIColor(named: "Background/Primary")
        static let secondary = UIColor(named: "Background/Secondary")
        static let tertiary = UIColor(named: "Background/Tertiary")
        static let overlay = UIColor(named: "Background/Overlay")/*?.withAlphaComponent(0.25)*/
    }
    
    // MARK: Controls -
    enum Controls {
        static let primary = UIColor(named: "Controls/Primary")
        static let secondary = UIColor(named: "Controls/Secondary")
        static let tertiary = UIColor(named: "Controls/Tertiary")/*?.withAlphaComponent(0.20)*/
    }
    
    // MARK: Labels -
    enum Labels {
        static let destructive = UIColor(named: "Labels/Destructive")
        static let onAccent = UIColor(named: "Labels/OnAccent")
        static let primary = UIColor(named: "Labels/Primary")
        static let primaryInvert = UIColor(named: "Labels/PrimaryInvert")
        static let secondary = UIColor(named: "Labels/Secondary")/*?.withAlphaComponent(0.60)*/
        static let tertiary = UIColor(named: "Labels/Tertiary")/*?.withAlphaComponent(0.20)*/
    }
    
    // MARK: Shadows -
    enum Shadows {
        static let primary = UIColor(named: "Shadows/Primary")/*?.withAlphaComponent(0.20)*/
    }
}
