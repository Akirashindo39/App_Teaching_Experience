//
//  ViewController.swift
//  Food Tracker
//
//  Created by Shindo, Akira on 4/4/16.
//  Copyright © 2016 Shindo, Akira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// Instance datas for this class
    internal static var sandwichCountVar = 0
    internal static var hamburgerCountVar = 0
    internal static var pastaCountVar = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sandwichStepper.value = Double(ViewController.sandwichCountVar)
        hamburgerStepper.value = Double(ViewController.hamburgerCountVar)
        pastaStepper.value = Double(ViewController.pastaCountVar)
        
        sandwichCount.text = String(ViewController.sandwichCountVar)
        hamburgerCount.text = String(ViewController.hamburgerCountVar)
        pastaCount.text = String(ViewController.pastaCountVar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // All these groups of code basically increments or decrements the number in th label when the stepper is tapped
    @IBOutlet weak var sandwichCount: UILabel!
    @IBOutlet weak var sandwichStepper: UIStepper!
    
    @IBAction func changeSandwichCount(sender: UIStepper) {
        sandwichCount.text = Int(sender.value).description
        ViewController.sandwichCountVar = Int(sender.value)
    }
    
    @IBOutlet weak var hamburgerCount: UILabel!
    @IBOutlet weak var hamburgerStepper: UIStepper!
    
    @IBAction func changeHamburgerCount(sender: UIStepper) {
        hamburgerCount.text = Int(sender.value).description
        ViewController.hamburgerCountVar = Int(sender.value)
    }
    
    @IBOutlet weak var pastaCount: UILabel!
    @IBOutlet weak var pastaStepper: UIStepper!
    
    @IBAction func changePastaCount(sender: UIStepper) {
        pastaCount.text = Int(sender.value).description
        ViewController.pastaCountVar = Int(sender.value)
    }
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var menuLabel: UILabel!
    

    // These methods changes the background colors of the screen
    @IBAction func changeColorToRed(sender: UIButton) {
        view.backgroundColor = UIColor.redColor()
    }
    
    @IBAction func changeColorToGreen(sender: UIButton) {
        view.backgroundColor = UIColor.greenColor()
    }
    
    @IBAction func changeColorToWhite(sender: UIButton) {
        view.backgroundColor = UIColor.whiteColor()
    }
    
}

