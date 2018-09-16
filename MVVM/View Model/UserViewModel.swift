//
//  UserViewModel.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class UserViewModel {
    var firstName : Dynamic<String>!
    var lastName : Dynamic<String>!
    var email : Dynamic<String>!
    var password : Dynamic<String>!
    
//    init(user: User) {
//        self.firstName = user.firstName
//        self.lastName = user.lastName
//        self.email = user.email
//        self.password = user.password
//    }
    
    
    init(firstName: String, lastName: String, email: String, password: String) {
        self.firstName = Dynamic<String>(firstName)
        self.lastName = Dynamic<String>(lastName)
        self.email = Dynamic<String>(email)
        self.password = Dynamic<String>(password)
    }
    
    
    
}
