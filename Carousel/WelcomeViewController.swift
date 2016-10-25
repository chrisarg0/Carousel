//
//  WelcomeViewController.swift
//  Carousel
//
//  Created by Chris Argonish on 10/21/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var spinBtnParentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 1500, height: 667)
        scrollView.delegate = self
        spinBtnParentView.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 375))
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        pageControl.numberOfPages = 4
        
        if page == 3 {
            pageControl.isHidden = true
            delay(0.1, closure: { () -> () in
                self.spinBtnParentView.alpha = 1
            })
            
        } else {
            pageControl.isHidden = false
            spinBtnParentView.alpha = 0
        }
    }

}
