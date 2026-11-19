// ViewController.swift by mac 08.10.2026

import UIKit

final class WelcomeVC: UIViewController {

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
        return ContentView(frame: view.frame)
    }
}
