//
//  ViewController.swift
//  ColorSwitches
//
//  Created by Daniel Huang on 6/9/16.
//  Copyright © 2016 Daniel Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var colorView: UIView!
    
    @IBAction func changeToColor(sender: UISwitch) {
        if sender.tag == 0 {
            colorView.backgroundColor = UIColor.redColor()
            greenSwitch.on = false
            blueSwitch.on = false
        } else if sender.tag == 1 {
            colorView.backgroundColor = UIColor.greenColor()
            redSwitch.on = false
            blueSwitch.on = false
        } else {
            colorView.backgroundColor = UIColor.blueColor()
            redSwitch.on = false
            greenSwitch.on = false
        }
    }
   
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let switches = [redSwitch, greenSwitch, blueSwitch]
        
        for switchButton in switches {
            switchButton.on = false
        }
    }
    
}

