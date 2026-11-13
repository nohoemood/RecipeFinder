// AppCoordinator.swift by mac 12.11.2026

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    var onFinish: (() -> Void)?
    
    var screenFactory: ScreenFactory

    // MARK: Init -
    init(navigationController: UINavigationController, screenFactory: ScreenFactory) {
        self.navigationController = navigationController
        self.screenFactory = screenFactory
    }

    func start() {
        showAuth()
    }
    
    // MARK: UserFlow -
    private func showAuth() {
        let authCoordinator = AuthCoordinator(navigationController: navigationController, screenFactory: screenFactory)
        
        childCoordinators.append(authCoordinator)
        authCoordinator.start()
    }
}
