//
//  IntroViewController.swift
//  Carousel
//
//  Created by Chris Argonish on 10/22/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 1336, height: 376)
        scrollView.delegate = self
        image1.transform = CGAffineTransform(rotationAngle: 0.25)
        image2.transform = CGAffineTransform(rotationAngle: -0.25)
        image3.transform = CGAffineTransform(rotationAngle: 0.25)
        image4.transform = CGAffineTransform(rotationAngle: -0.25)
        image5.transform = CGAffineTransform(rotationAngle: 0.25)
        image6.transform = CGAffineTransform(rotationAngle: -0.25)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 376))
        // Set the current page, so the dots will update
        
    }

}
