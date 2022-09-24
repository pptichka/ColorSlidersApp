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
        colorView.layer.cornerRadius = 25
        
        setupSliders()
    }
    
    private func setupSliders() {
        let sliderValue: Float = 0.0
        
        redSlider.value = sliderValue
        greenSlider.value = sliderValue
        blueSlider.value = sliderValue
        
        let sliderMinValue: Float = 0.0
        let sliderMaxValue: Float = 255
        
        redSlider.minimumValue = sliderMinValue
        redSlider.maximumValue = sliderMaxValue
        redSlider.minimumTrackTintColor = .systemRed
        
        greenSlider.maximumValue = sliderMinValue
        greenSlider.maximumValue = sliderMaxValue
        greenSlider.minimumTrackTintColor = .systemGreen
        
        blueSlider.minimumValue = sliderMinValue
        blueSlider.maximumValue = sliderMaxValue
        blueSlider.minimumTrackTintColor = .systemIndigo
    }

    @IBAction func redSliderTapped() {
    }
    
    @IBAction func greenSliderTapped() {
    }
    
    @IBAction func blueSliderTapped() {
    }
}

