//
//  IntroViewController.swift
//  Carousel
//
//  Created by Chris Argonish on 10/22/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!

    func convertValue(value: CGFloat, r1Min: CGFloat,r1Max: CGFloat,r2Min: CGFloat, r2Max: CGFloat) -> CGFloat {
        
        let ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = imageView.frame.size
        scrollView.delegate = self
        
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = Float(scrollView.contentOffset.y)
        // content offset: 0 -> 568
        // x offset: -30 -> 0
        // y offset: -285 -> 0
        
        // Image 1 Transform
        
        let tx = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -79, r2Max: 0)
        let ty = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -350, r2Max: 0)
        let scale = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 1, r2Max: 1)
        let rotation = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -15, r2Max: 0)
        
        image1.transform = CGAffineTransform(translationX: tx, y: ty)
        image1.transform = CGAffineTransform(rotationAngle: CGFloat(Double(rotation) * M_PI / 180))
        
        image1.transform = CGAffineTransform(translationX: tx, y: ty)
        image1.transform = image1.transform.rotated(by: CGFloat(M_PI / 180) * rotation)
        image1.transform = image1.transform.scaledBy(x: CGFloat(scale), y: CGFloat(scale))
        
        // Image 2 Transform
        
        let txImage2 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 79, r2Max: 0)
        let tyImage2 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -290, r2Max: 0)
        let scaleImage2 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 1.45, r2Max: 1)
        let rotationImage2 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -10, r2Max: 0)
        
        image2.transform = CGAffineTransform(translationX: txImage2, y: tyImage2)
        image2.transform = CGAffineTransform(rotationAngle: CGFloat(Double(rotationImage2) * M_PI / 180))
        
        image2.transform = CGAffineTransform(translationX: txImage2, y: tyImage2)
        image2.transform = image2.transform.rotated(by: CGFloat(M_PI / 180) * rotationImage2)
        image2.transform = image2.transform.scaledBy(x: scaleImage2, y: scaleImage2)
        
        // Image 3 Transform
        
        let txImage3 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -85, r2Max: 0)
        let tyImage3 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -485, r2Max: 0)
        let scaleImage3 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 2.1, r2Max: 1)
        let rotationImage3 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -10, r2Max: 0)
        
        image3.transform = CGAffineTransform(translationX: txImage3, y: tyImage3)
        image3.transform = CGAffineTransform(rotationAngle: CGFloat(Double(rotationImage3) * M_PI / 180))
        
        image3.transform = CGAffineTransform(translationX: txImage3, y: tyImage3)
        image3.transform = image3.transform.rotated(by: CGFloat(M_PI / 180) * rotationImage3)
        image3.transform = image3.transform.scaledBy(x: scaleImage3, y: scaleImage3)

        
        // Image 4 Transform
        
        let txImage4 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 205, r2Max: 0)
        let tyImage4 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -565, r2Max: 0)
        let scaleImage4 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 1.6, r2Max: 1)
        let rotationImage4 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 10, r2Max: 0)
        
        image4.transform = CGAffineTransform(translationX: txImage4, y: tyImage4)
        image4.transform = CGAffineTransform(rotationAngle: CGFloat(Double(rotationImage4) * M_PI / 180))
        
        image4.transform = CGAffineTransform(translationX: txImage4, y: tyImage4)
        image4.transform = image4.transform.rotated(by: CGFloat(M_PI / 180) * rotationImage4)
        image4.transform = image4.transform.scaledBy(x: scaleImage4, y: scaleImage4)
        
        // Image 5 Transform
        
        let txImage5 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -135, r2Max: 0)
        let tyImage5 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -570, r2Max: 0)
        let scaleImage5 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 1.53, r2Max: 1)
        let rotationImage5 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 10, r2Max: 0)
        
        image5.transform = CGAffineTransform(translationX: txImage5, y: tyImage5)
        image5.transform = CGAffineTransform(rotationAngle: CGFloat(Double(rotationImage5) * M_PI / 180))
        
        image5.transform = CGAffineTransform(translationX: txImage5, y: tyImage5)
        image5.transform = image5.transform.rotated(by: CGFloat(M_PI / 180) * rotationImage5)
        image5.transform = image5.transform.scaledBy(x: scaleImage5, y: scaleImage5)
        
        // Image 6 Transform
        
        let txImage6 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -48, r2Max: 0)
        let tyImage6 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -469, r2Max: 0)
        let scaleImage6 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 1.60, r2Max: 1)
        let rotationImage6 = convertValue(value: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 13, r2Max: 0)
        
        image6.transform = CGAffineTransform(translationX: txImage6, y: tyImage6)
        image6.transform = CGAffineTransform(rotationAngle: CGFloat(Double(rotationImage6) * M_PI / 180))
        
        image6.transform = CGAffineTransform(translationX: txImage6, y: tyImage6)
        image6.transform = image6.transform.rotated(by: CGFloat(M_PI / 180) * rotationImage6)
        image6.transform = image6.transform.scaledBy(x: scaleImage6, y: scaleImage6)
        
    }

}
