//
//  ViewController.swift
//  Chat Cactus
//
//  Created by Reggie Nora on 9/1/17.
//  Copyright © 2017 Reggie Nora. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //This is the "Logout" button! (Links to handleLogout func)
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
        
    }
    //Logout screen
    func handleLogout() {
        let loginController = LoginController()
        self.present(loginController, animated: true, completion: nil)
        
    }

}

