//
//  EditSymbolViewController.swift
//  Hello iOS 13
//
//  Created by Sunil Chauhan on 17/09/19.
//  Copyright © 2019 chauhan130. All rights reserved.
//

import UIKit

class EditSymbolViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var sizeSlider: UISlider!
    @IBOutlet var weightPicker: UIPickerView!

    var symbolName: String = "square.and.arrow.up.on.square"
    var color: UIColor = UIColor.systemRed

    // MARK: -

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let image = UIImage(systemName: symbolName)
        let config = UIImage.SymbolConfiguration(pointSize:Preferences.shared.symbolInfoPointSize , weight: Preferences.shared.symbolInfoWeight)
        imageView.image = image?.applyingSymbolConfiguration(config)
        imageView.tintColor = color

        sizeSlider.setValue(Float(Preferences.shared.symbolInfoPointSize), animated: false)
        weightPicker.selectRow(Preferences.shared.symbolInfoWeight.rawValue - 1, inComponent: 0, animated: false)

        weightPicker.selectRow(3, inComponent: 0, animated: false)
    }

    // MARK: - Actions
    @IBAction func sliderValueUpdated() {
        Preferences.shared.symbolInfoPointSize = CGFloat(sizeSlider.value)
        let config = UIImage.SymbolConfiguration(pointSize:Preferences.shared.symbolInfoPointSize , weight: Preferences.shared.symbolInfoWeight)
        imageView.image = imageView.image?.applyingSymbolConfiguration(config)
    }
}

// MARK: -

extension EditSymbolViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 9
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch row {
        case 0:
            return "Ultra Light"
        case 1:
            return "Thin"
        case 2:
            return "Light"
        case 3:
            return "Regular"
        case 4:
            return "Medium"
        case 5:
            return "Semibold"
        case 6:
            return "Bold"
        case 7:
            return "Heavy"
        case 8:
            return "Black"
        default:
            return "Undefined"
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if let weight = UIImage.SymbolWeight(rawValue: row + 1) {
            Preferences.shared.symbolInfoWeight = weight
        }
        let config = UIImage.SymbolConfiguration(pointSize:Preferences.shared.symbolInfoPointSize , weight: Preferences.shared.symbolInfoWeight)
        imageView.image = imageView.image?.applyingSymbolConfiguration(config)
    }
}
