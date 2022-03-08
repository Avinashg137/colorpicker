//
//  ViewController.swift
//  colorpicker
//
//  Created by MAC OS on 07/03/22.
//

import UIKit

class ViewController: UIViewController, UIColorPickerViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: UIButton ) {
        let colorPicker = UIColorPickerViewController()
        colorPicker.delegate = self
        present(colorPicker, animated: true)
    }
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
        view.backgroundColor = color
    }
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
        view.backgroundColor = color
        
    }
    
}

