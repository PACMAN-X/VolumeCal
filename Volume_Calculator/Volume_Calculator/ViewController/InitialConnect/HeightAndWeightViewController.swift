//
//  HeightAndWeightViewController.swift
//  Volume_Calculator
//
//  Created by Kim Taeseon on 09/02/2019.
//  Copyright © 2019 connect.foundation.sr9872. All rights reserved.
//

import UIKit

class HeightAndWeightViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!

    @IBAction func nextButton(_ sender: Any) {
        navigationController?.pushViewController(LoginRoutesViewController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 10.0
        nextButton.layer.masksToBounds = true
        nextButton.isEnabled = false
        [heightInput, weightInput].forEach({ $0.addTarget(self, action: #selector(editingChanged), for: .editingChanged) })
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    @objc func editingChanged(_ textField: UITextField) {
        if textField.text?.count == 1 {
            if textField.text?.first == " " {
                textField.text = ""
                return
            }
        }
        guard
            let height = heightInput.text, !height.isEmpty,
            let weight = weightInput.text, !weight.isEmpty
            else {
                nextButton.isEnabled = false
                nextButton.backgroundColor = #colorLiteral(red: 0.6078431373, green: 0.6078431373, blue: 0.6078431373, alpha: 1)
                return
        }
        nextButton.isEnabled = true
        nextButton.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
    }
}
