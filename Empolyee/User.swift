//
//  User.swift
//  Empolyee
//
//  Created by Hagar Diab on 4/30/20.
//  Copyright © 2020 Hagar Diab. All rights reserved.
//

import Foundation

struct User{
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func authenticat() -> Bool {
        
        if username.count > 5 && password.count>=10{
            return true
        }else{
            return false
        }
    }
}
