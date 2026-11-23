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
        let welcomeVC = screenFactory.makeWelcomeVC()
        
        welcomeVC.onCreateAccount = {
            print("Create account - from AuthCoordinator")
        }
        
        welcomeVC.onLogIn = {
            print("Log in - from AuthCoordinator")
        }
        
        welcomeVC.onTryDemoAccount = { [weak self] in
            print("Try the demo account - from AuthCoordinator")
            guard let strongSelf = self else { return }
        }
        
        navigationController.setViewControllers([welcomeVC], animated: false)
    }
}
