// Coordinator.swift by mac 13.11.2026 

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get }
    var childCoordinators: [Coordinator] { get set }
    var onFinish: (() -> (Void))? { get set }
    
    func start()
}
