//
//  FirstViewController.swift
//  project_proposal
//
//  Created by student on 10/23/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

 import UIKit
 import FirebaseUI

 class SignupViewController: UIViewController {

      @IBOutlet weak var userNameTf:UITextField!
      @IBOutlet weak var userIdTf:UITextField!
      @IBOutlet weak var passwordTf:UITextField!
      @IBOutlet weak var ageTf:UITextField!
      @IBOutlet weak var genderTf:UITextField!
      @IBOutlet weak var errorTf:UILabel!
     
     
     override func viewDidLoad() {
         super.viewDidLoad()

         // Do any additional setup after loading the view.
     }
     //This method is used for signup to app
     @IBAction func signUp(sender:Any){
         if  passwordTf.text!.count>0 && userIdTf.text!.count>0  {
            
             Auth.auth().createUser(withEmail: userIdTf.text!, password: passwordTf.text!) { (user, error) in
             
             if error == nil {
                 print("You have successfully signed up")
                 //Goes to the Setup page which lets the user take a photo for their profile picture and also chose a username
                 let addNewRestaurantVC = self.storyboard?.instantiateViewController(withIdentifier: "login") as! UIViewController
                  addNewRestaurantVC.modalPresentationStyle = .fullScreen
                     self.present(addNewRestaurantVC, animated: true, completion: nil)
                 
                 
             } else {
                 let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                 
                 let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                 alertController.addAction(defaultAction)
                 
                 self.present(alertController, animated: true, completion: nil)
             }
         
              
         }

         
     }
         else {
             let alertController = UIAlertController(title: "Enter Required Fields", message: "", preferredStyle: .alert)
             
             let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
             alertController.addAction(defaultAction)
             
             self.present(alertController, animated: true, completion: nil)
         }

    

 }
     //This method is used to sign in to app
      @IBAction func signIn(sender:Any){
         let addNewRestaurantVC = self.storyboard?.instantiateViewController(withIdentifier: "login") as! UIViewController
          addNewRestaurantVC.modalPresentationStyle = .fullScreen
                           self.present(addNewRestaurantVC, animated: true, completion: nil)
         
     }
 }

