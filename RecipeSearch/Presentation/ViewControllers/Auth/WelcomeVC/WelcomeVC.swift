// ViewController.swift by mac 08.10.2026

import UIKit

final class WelcomeVC: UIViewController {

    // MARK: Callback -
    var onCreateAccount: (() -> Void)?
    var onLogIn: (() -> Void)?
    var onTryDemoAccount: (() -> Void)?
    
    // MARK: LifeCircle -
    override func loadView() {
        super.loadView()
        self.view = createContentView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Functions -
    private func createContentView() -> UIView {
        let contentView = ContentView(frame: .zero)
        
        contentView.onCreateAccount = { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.onCreateAccount?()
        }
        
        contentView.onLogIn = { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.onLogIn?()
        }
        
        contentView.onTryDemoAccount = { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.onTryDemoAccount?()
        }
        
        return contentView
    }
}
