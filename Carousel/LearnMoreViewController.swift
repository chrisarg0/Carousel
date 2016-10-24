//
//  LearnMoreViewController.swift
//  Carousel
//
//  Created by Chris Argonish on 10/24/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class LearnMoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressEsc(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func option1Tap(_ sender: AnyObject) {
        sender.isSelected = true
        sender.isSelected = !sender.isSelected
    }
}
