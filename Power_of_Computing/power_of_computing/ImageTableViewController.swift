//
//  ImageTableViewController.swift
//  power_of_computing
//
//  Created by student on 11/16/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

import UIKit

class ImageTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Resources.shared.numResources()
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if let person = Resources.shared[indexPath.row] {
            cell.textLabel!.text = person.name
            if let image = UIImage(named:"\(person.name).jpg") {
                cell.imageView!.image = image
            } else {
                cell.imageView!.image = UIImage(named:"defaultPerson.jpeg")
            }
        }
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 0. Make a MenuTableViewController
        let menuTVC = storyboard?.instantiateViewController(withIdentifier: "MenuTVC")  as! DetailViewController
        // 1. Supply the currently chosen restaurant to our MenuTVC
        menuTVC.resource = Resources.shared[indexPath.row]
        // 2. Push the MenuTVC onto the stack
        navigationController?.pushViewController(menuTVC, animated: true)
    }


}
