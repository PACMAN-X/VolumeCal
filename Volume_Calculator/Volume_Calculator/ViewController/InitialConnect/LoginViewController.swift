//
//  LoginViewController.swift
//  Volume_Calculator
//
//  Created by Kim Taeseon on 30/01/2019.
//  Copyright © 2019 connect.foundation.sr9872. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var newUserButton: UIButton!
    @IBOutlet weak var existingUser: UIButton!
    @IBAction func registerNewUser(_ sender: UIButton) {
        navigationController?.pushViewController(NewUserViewController(), animated: true)
    }
    
    @IBAction func existingUserComing(_ sender: UIButton) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newUserButton.layer.cornerRadius = 10.0
        newUserButton.layer.masksToBounds = true
        existingUser.layer.cornerRadius = 10.0
        existingUser.layer.masksToBounds = true
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
