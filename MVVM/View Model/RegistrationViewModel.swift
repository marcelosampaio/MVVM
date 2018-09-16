//
//  RegistrationViewModel.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class RegistrationViewModel {
    
    var firstName : String
    var lastName : String
    var email : String
    var password : String
    
    init() {
        self.firstName = String()
        self.lastName = String()
        self.email = String()
        self.password = String()
    }
    
    init(firstName: String, lastName: String, email: String, password: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
    
    func save() {
        let user = User.init(viewModel: self)
        print("saved user: \(user)       ###############################################")
    }
}
