//
//  NewUserViewController.swift
//  Volume_Calculator
//
//  Created by Kim Taeseon on 30/01/2019.
//  Copyright © 2019 connect.foundation.sr9872. All rights reserved.
//

import UIKit

class NewUserViewController: UIViewController {
    
    
    @IBAction func selectedFemale(_ sender: UIButton) {
        User.sharedInstance.sex = false
        navigationController?.pushViewController(HeightAndWeightViewController(), animated: true)
    }
    
    @IBAction func selectedMale(_ sender: UIButton) {
        User.sharedInstance.sex = true
        navigationController?.pushViewController(HeightAndWeightViewController(), animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
