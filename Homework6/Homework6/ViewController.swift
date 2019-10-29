//
//  ViewController.swift
//  Homework6
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var selectionSwitch: UISwitch!
    @IBOutlet var selectionButton: UIButton!
    @IBOutlet var continueButton: UIButton!
    
    @IBAction func segmentedControllerDidChangeValue(_ sender: UISegmentedControl) {
        switch segmentedController.selectedSegmentIndex {
        case 0:
            selectionSwitch.isHidden = false
            selectionSwitch?.isOn = false
            continueButton.isEnabled = false
        case 1:
            selectionSwitch.isHidden = false
            selectionSwitch?.isOn = true
            continueButton.isEnabled = false
        default:
            selectionSwitch?.isOn = false
            continueButton.isEnabled = false
        }

    }
    
    @IBAction func selectionSwitchDidChangeValue(_ sender: UISwitch) {
        selectionButton.isEnabled = false
        if selectionSwitch?.isOn == true {
            selectionButton.isEnabled = true
        }
    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        continueButton.isEnabled = true
        if selectionButton?.isSelected == true {
            continueButton.isEnabled = false
        }
    }
}

