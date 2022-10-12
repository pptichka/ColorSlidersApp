//
//  ViewController.swift
//  ColorSlidersApp
//
//  Created by Ксн Тлскн on 24.09.2022.
//

import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - IBOutlets
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    var startVCBackround: UIColor!
    var delegate: SettingsViewControllerDelegate!
    
    // MARK: - Public Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 25
        startVCBackround = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.00
        )
        colorView.backgroundColor = startVCBackround
        changeViewColor()
    
        showValue()
        
        redTextField.addDoneButtonOnKeyboard()
        redTextField.delegate = self
        greenTextField.addDoneButtonOnKeyboard()
        greenTextField.delegate = self
        blueTextField.addDoneButtonOnKeyboard()
        blueTextField.delegate = self
        
        navigationItem.hidesBackButton = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        redValueLabel.text = redTextField.text
        redSlider.value = Float(redTextField.text!) ?? 0.0
        
        greenValueLabel.text = greenTextField.text
        greenSlider.value = Float(greenTextField.text!) ?? 0.0
        
        blueValueLabel.text = blueTextField.text
        blueSlider.value = Float(blueTextField.text!) ?? 0.0
        
        changeViewColor()
    }
    
    // MARK: - IBActions
    
    @IBAction func slidersTapped() {
        showValue()
        changeViewColor()
    }
    
    @IBAction func applyChanges() {
        delegate.setNewValue(for: startVCBackround)
    }
    
    @IBAction func redTFEndEditing() {
        redValueLabel.text = redTextField.text
        
    }
    
    // MARK: - Private Methods
    
    private func showValue() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        
        redTextField.text = redValueLabel.text
        greenTextField.text = greenValueLabel.text
        blueTextField.text = blueValueLabel.text
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

// MARK: - UITextField Methods

extension UITextField {
    
    func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(
            frame: CGRect.init(
                x: 0,
                y: 0,
                width: UIScreen.main.bounds.width,
                height: 50
            )
        )
        
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        
        let done: UIBarButtonItem = UIBarButtonItem(
            title: "Done",
            style: .done,
            target: self,
            action: #selector(self.doneButtonAction)
        )
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction() {
        self.resignFirstResponder()
    }
}

// MARK: UI


