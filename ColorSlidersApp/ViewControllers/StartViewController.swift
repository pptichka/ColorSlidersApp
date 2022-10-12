//
//  StartViewController.swift
//  ColorSlidersApp
//
//  Created by Ксн Тлскн on 12.10.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValue(for viewColor: UIColor)
}

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        
        view.backgroundColor = settingsVC.startVCBackround
        settingsVC.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate

extension StartViewController: SettingsViewControllerDelegate {
    func setNewValue(for viewColor: UIColor) {
        view.backgroundColor = viewColor
    }
}
