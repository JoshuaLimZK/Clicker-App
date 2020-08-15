//
//  ViewController.swift
//  Clicker-App
//
//  Created by Joshua Lim on 15/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        count += 1
        counterLabel.text = String(count)
    }
    
}
