//
//  User.swift
//  Volume_Calculator
//
//  Created by Kim Taeseon on 31/01/2019.
//  Copyright © 2019 connect.foundation.sr9872. All rights reserved.
//

import Foundation

class User {
    static let sharedInstance = User()
    
    var name: String = ""
    var sex: Bool = true
    var height: Double = 0.0
    var weight: Double = 0.0
    
    private init() { }
}
