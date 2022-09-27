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
        changeViewColor()
    
        setValue()
    }
    
    
    // MARK: - IBActiond
    
    @IBAction func slidersTapped() {
        setValue()
        changeViewColor()
    }
    
    // MARK: - Private Methods
    
    private func setValue() {
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func changeViewColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.00
        )
    }

   
}

