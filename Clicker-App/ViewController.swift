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
    @IBOutlet weak var timerLabel: UILabel!
    
    var count = 0
    var currentTime: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (_) in
            // type code here
            self.currentTime += 0.1
            print(self.currentTime)
            self.timerLabel.text = "\(self.currentTime)s"
            
        }

    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        count += 1
        counterLabel.text = String(count)
        if count == 50 {
            performSegue(withIdentifier: "show results", sender: nil)
        }
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "show results" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.time = currentTime
        }

    }
}
