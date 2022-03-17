//
//  ViewController.swift
//  ICE-7
//
//  Created by Aishwarya Shrestha on 16/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet var myLabel: UILabel!
    
    @IBOutlet var myTextField: UITextField!
    
    @IBOutlet var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

// normal
//        UIView.animate(withDuration: 2.0) {
//            self.myLabel.center.x += self.view.bounds.width
//            self.myTextField.center.x += self.view.bounds.width
//            self.myImageView.center.x += self.view.bounds.width
//        }
        
// include delays
//        UIView.animate(withDuration: 3.4, delay: 2.3, options:
//        [.repeat, .autoreverse], animations: {
//            self.myLabel.center.x += self.view.bounds.width
//            self.myTextField.center.x += self.view.bounds.width
//            self.myImageView.center.x += self.view.bounds.width
//        }, completion: nil)
        

        //dampling and velocity
        UIView.animate(withDuration: 2.0, delay: 0.5, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.5, options: [.repeat, .autoreverse], animations: {
            self.myLabel.center.x += self.view.bounds.width
            self.myTextField.center.x += self.view.bounds.width
            self.myImageView.center.x += self.view.bounds.width
        }, completion: nil)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        myLabel.center.x -= view.bounds.width
        myTextField.center.x -= view.bounds.width
        myImageView.center.x -= view.bounds.width
    }
    
   

}

