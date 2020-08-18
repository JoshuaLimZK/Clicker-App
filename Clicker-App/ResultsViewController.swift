//
//  ResultsViewController.swift
//  Clicker-App
//
//  Created by Joshua Lim on 16/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
        
    @IBOutlet weak var timeLabel: UILabel!
    var time = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = "\(time)s"
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
