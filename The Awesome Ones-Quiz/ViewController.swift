//
//  ViewController.swift
//  Random Entrees
//
//  Created by reece olrich on 9/5/19.
//  Copyright © 2019 reece olrich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Viewer: UIImageView!
    
    var index = -1
    var newIndex = -1
    var randomStart = Int.random(in: 0...7)
    
    
    var people = ["Ethan",
                   "Brayden",
                   "Kyle",
                   "Reece",
                   "Max",
                   "Jessica",
                   "Sophia",
                   "Jared"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Button(_ sender: UIButton) {
    
        if randomStart > people.count-1 {
            randomStart = 0
        }
        Label.text = people[randomStart]
        Viewer.image = UIImage(named: "\(randomStart)")
        randomStart += 1
        
        
    }

}
