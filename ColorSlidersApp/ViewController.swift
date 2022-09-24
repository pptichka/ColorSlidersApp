//
//  ViewController.swift
//  ColorSlidersApp
//
//  Created by Ксн Тлскн on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func redSliderTapped() {
    }
    
    @IBAction func greenSliderTapped() {
    }
    
    @IBAction func blueSliderTapped() {
    }
}

