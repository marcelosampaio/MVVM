//
//  UserViewModel.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class UserViewModel {
    var firstName : String!
    var lastName : String!
    var email : String!
    var password : String!
    
    init(user: User) {
        self.firstName = user.firstName
        self.lastName = user.lastName
        self.email = user.email
        self.password = user.password
    }
    
}
