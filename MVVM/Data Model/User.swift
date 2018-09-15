//
//  User.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class User {
    var firstName : String!
    var lastName : String!
    var email : String!
    var password : String!
    
    init(firstName: String, lastName: String, email: String, password: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
    
    
    
    init(viewModel: RegistrationViewModel) {
        self.firstName = viewModel.firstName
        self.lastName = viewModel.lastName
        self.email = viewModel.email
        self.password = viewModel.password
    }

    
}
