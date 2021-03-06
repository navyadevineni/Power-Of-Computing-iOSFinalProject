//
//  DetailViewController.swift
//  power_of_computing
//
//  Created by student on 11/16/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageLBL:UIImageView!
    @IBOutlet weak var nameLBL:UILabel!
    @IBOutlet weak var descLBL:UITextView!
    
    var resource:Resource!
    var img = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    override func viewWillAppear(_ animated: Bool) {
        nameLBL.text = resource.details[0]
        descLBL.text = resource.details[1]
        if let image = UIImage(named:"\(resource.details[0]).jpg") {
            imageLBL.image = image
        } else {
            imageLBL.image = UIImage(named:"defaultPerson.jpeg")
        }
    }
    
}
