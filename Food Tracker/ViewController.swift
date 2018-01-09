//
//  ViewController.swift
//  Food Tracker
//
//  Created by Shindo, Akira on 4/4/16.
//  Copyright © 2016 Shindo, Akira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var menuLabel: UILabel!
    internal static var selectedMenuString = ""
    
    
    @IBAction func sandwichOrdered(sender: UIButton) {
        ViewController.selectedMenuString = "You chose to get a sandwich!"
    }
    
    
    @IBAction func hamburgerOrdered(sender: UIButton) {
        ViewController.selectedMenuString = "You chose to get a hamburger!"
    }
    
    @IBAction func pastaOrdered(sender: UIButton) {
        ViewController.selectedMenuString = "You chose to get pasta!"
    }
    
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

