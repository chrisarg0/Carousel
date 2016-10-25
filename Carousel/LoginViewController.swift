//
//  LoginViewController.swift
//  Carousel
//
//  Created by Chris Argonish on 10/22/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pwField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // define variables for initial y and offest
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
        scrollView.delegate = self
        
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
            
            func keyboardWillHide(notification: NSNotification) {
                // Move the buttons back down to it's original position
                self.buttonParentView.frame.origin.y = self.btnInitialY
            }
        }
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // If the scrollView has been scrolled down by 50px or more...
        if scrollView.contentOffset.y <= -50 {
            // Hide the keyboard
            view.endEditing(true)
            print("scroll view is scrolling")
        }
    }
    
    @IBAction func didPressBackBtn(_ sender: AnyObject) {
        navigationController!.popViewController(animated: true)
    }
    
    
    @IBAction func didTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func didPressSignIn(_ sender: AnyObject) {
        activityIndicator.startAnimating()
        activityIndicator.isHidden = false

        // create alert controller
        let emailAlertController = UIAlertController(title: "Required Field", message: "Please enter your email address", preferredStyle: .alert)
        
        let pwAlertController = UIAlertController(title: "Required Field", message: "Please enter your password", preferredStyle: .alert)
        
        let wrongComboAlertController = UIAlertController(title: "Required Field", message: "The email or password you entered are incorrect. Please try again.", preferredStyle: .alert)
        
        
        // create ok action
        let okAction = UIAlertAction(title: "Ok", style: .default) { action in
            // this is where you handle the response when the user presses the Ok button action
        }
        
        // add okAction to your alertController
        emailAlertController.addAction(okAction)
        pwAlertController.addAction(okAction)
        wrongComboAlertController.addAction(okAction)

        
        if (emailField.text?.isEmpty)! {
            activityIndicator.stopAnimating()
            present(emailAlertController, animated: true)
        } else if (pwField.text?.isEmpty)! {
            activityIndicator.stopAnimating()
            present(pwAlertController, animated: true)
        } else if ((emailField.text != "chris@codepath.com") && (pwField.text != "learnswift")) {
            activityIndicator.stopAnimating()
            present(wrongComboAlertController, animated: true)
        } else {
            activityIndicator.stopAnimating()
            self.performSegue(withIdentifier: "signInSegue", sender: nil)
        }
    }
    

}
