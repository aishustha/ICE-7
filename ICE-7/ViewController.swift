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
        
        UIView.animate(withDuration: 2.0) {
           self.myLabel.center.x += self.view.bounds.width
           self.myTextField.center.x += self.view.bounds.width
           self.myImageView.center.x += self.view.bounds.width
       }
    }

    
    override func viewWillAppear(_ animated: Bool) {
        myLabel.center.x -= view.bounds.width
        myTextField.center.x -= view.bounds.width
        myImageView.center.x -= view.bounds.width
    }
    
   

}

