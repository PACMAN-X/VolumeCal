//
//  NewUserViewController.swift
//  Volume_Calculator
//
//  Created by Kim Taeseon on 30/01/2019.
//  Copyright © 2019 connect.foundation.sr9872. All rights reserved.
//

import UIKit

class NewUserViewController: UIViewController {
    
    var newUser: User?
    
    @IBAction func selectedFemale(_ sender: UIButton) {
        if var newUser = newUser {
            newUser.sex = false
            print("female")
        }
    }
    
    @IBAction func selectedMale(_ sender: UIButton) {
        if var newUser = newUser {
            newUser.sex = true
            print("male")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
