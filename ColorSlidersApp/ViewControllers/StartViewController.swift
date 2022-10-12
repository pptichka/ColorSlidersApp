//
//  StartViewController.swift
//  ColorSlidersApp
//
//  Created by Ксн Тлскн on 12.10.2022.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        
        view.backgroundColor = settingsVC.viewColor
    }
}
