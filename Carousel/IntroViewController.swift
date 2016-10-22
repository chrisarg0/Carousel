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

        scrollView.contentSize = CGSize(width: 376, height: 1336)
        scrollView.delegate = self
        // image1.transform = CGAffineTransform(rotationAngle: 0.25)
        //image2.transform = CGAffineTransform(rotationAngle: -0.25)
        //image3.transform = CGAffineTransform(rotationAngle: 0.25)
        //image4.transform = CGAffineTransform(rotationAngle: -0.25)
        //image5.transform = CGAffineTransform(rotationAngle: 0.25)
        //image6.transform = CGAffineTransform(rotationAngle: -0.25)
        
    }


}
