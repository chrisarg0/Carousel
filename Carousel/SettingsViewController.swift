//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Chris Argonish on 10/24/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 375, height: 816)
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressSignOut(_ sender: AnyObject) {
    
        let alertController = UIAlertController(title: "", message: "Are you sure you want to sign out?", preferredStyle: .actionSheet)
        
        let logOutAction = UIAlertAction(title: "Sign Out", style: .destructive) { (action) in
            
            self.performSegue(withIdentifier: "returnToHomeScreen", sender: nil)
        }
        
        alertController.addAction(logOutAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        
        alertController.addAction(cancelAction)

        
        present(alertController, animated: true)
    }
    
    
    
    @IBAction func didPressEsc(_ sender: AnyObject) {
    
        dismiss(animated: true, completion: nil)
    
     }
    

}
