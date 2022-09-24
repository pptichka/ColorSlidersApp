//
//  ViewController.swift
//  ColorSlidersApp
//
//  Created by Ксн Тлскн on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
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
        
        let startTextOfValue = "0.0"
        
        redSliderValue.text = startTextOfValue
        greenSliderValue.text = startTextOfValue
        blueSliderValue.text = startTextOfValue
        
        setupSliders()
        changeViewColor()
    }
    
    
    // MARK: - Private Methods
    
    private func setupSliders() {
        let sliderValue: Float = 0.0
        
        redSlider.value = sliderValue
        greenSlider.value = sliderValue
        blueSlider.value = sliderValue
        
        let sliderMinValue: Float = 0.0
        let sliderMaxValue: Float = 1
        
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
    
    private func changeViewColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.00
        )
    }

    // MARK: - IBActiond
    
    @IBAction func redSliderTapped() {
        let roundedValue = round(redSlider.value * 100)/100
        redSliderValue.text = roundedValue.formatted()
    }
    
    @IBAction func greenSliderTapped() {
        let roundedValue = round(greenSlider.value * 100)/100
        greenSliderValue.text = roundedValue.formatted()
    }
    
    @IBAction func blueSliderTapped() {
        let roundedValue = round(blueSlider.value * 100)/100
        blueSliderValue.text = roundedValue.formatted()
    }
}

