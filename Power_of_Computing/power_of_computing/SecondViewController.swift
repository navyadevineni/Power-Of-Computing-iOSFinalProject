//
//  SecondViewController.swift
//  project_proposal
//
//  Created by student on 10/23/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var userNameTf:UITextField!
    @IBOutlet weak var userPasswordTf:UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //This method is used for login view to app
    @IBAction func submit(sender:Any){
        if self.userNameTf.text == "" || self.userPasswordTf.text == "" {
            
            //Alert to tell the user that there was an error because they didn't fill anything in the textfields because they didn't fill anything in
            
            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
        
        }

}

