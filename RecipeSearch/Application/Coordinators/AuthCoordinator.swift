// AuthCoordinator.swift by mac 13.11.2026 

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    var onFinish: (() -> ())? = {}
    
    var screenFactory: ScreenFactory

    init(navigationController: UINavigationController, screenFactory: ScreenFactory) {
        self.navigationController = navigationController
        self.screenFactory = screenFactory
    }

    func start() {
        let screen = screenFactory.makeWelcomeVC()
        navigationController.setViewControllers([screen], animated: false)
    }
}
