//
//  CreateAccountViewController.swift
//  Carousel
//
//  Created by Chris Argonish on 10/22/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var formInitialY: CGFloat!
    var formOffset: CGFloat!
    var btnInitialY: CGFloat!
    var btnOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the scroll view content size
        scrollView.contentSize = scrollView.frame.size
        // Set the content insets
        scrollView.contentInset.bottom = 100
        
        // assign values to our variables
        formInitialY = fieldParentView.frame.origin.y
        formOffset = -100
        btnInitialY = buttonParentView.frame.origin.y
        btnOffset = -270
        
        // hide activity indicator
        activityIndicator.isHidden = true
        
        // Register for keyboard events
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to display
            self.fieldParentView.frame.origin.y = self.formInitialY + self.formOffset
            self.buttonParentView.frame.origin.y = self.btnInitialY + self.btnOffset
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
            self.fieldParentView.frame.origin.y = self.formInitialY
            self.buttonParentView.frame.origin.y = self.btnInitialY
        }
        
    }

    @IBAction func didPressBackButton(_ sender: AnyObject) {
        
        navigationController!.popViewController(animated: true)
        
    }
    

}
