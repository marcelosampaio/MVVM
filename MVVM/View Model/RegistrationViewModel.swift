//
//  RegistrationViewModel.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation


struct BrokenRule {
    var propertyName : String
    var message : String
}

protocol ViewModel {
    var brokenRule : [BrokenRule] { get set }
    var isValid : Bool { mutating get }
}

class RegistrationViewModel : ViewModel {
    
    var firstName : String
    var lastName : String
    var email : String
    var password : String
    
    // protocol implmentation
    var brokenRule : [BrokenRule] = [BrokenRule]()
    var isValid : Bool {
        get {
            self.brokenRule = [BrokenRule]()
            validate()
            return self.brokenRule.count == 0 ? true : false
        }
    }
    
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

// MARK: - Extension
extension RegistrationViewModel {
    private func validate() {
        if firstName.isEmpty {
            self.brokenRule.append(BrokenRule(propertyName: "firstName", message: "First name is empty!"))
        }
        
        if lastName.isEmpty {
            self.brokenRule.append(BrokenRule(propertyName: "lastName", message: "Last name is empty!"))
        }
        
        if email.isEmpty {
            self.brokenRule.append(BrokenRule(propertyName: "email", message: "E-mail name is empty!"))
        }
        
        if password.isEmpty {
            self.brokenRule.append(BrokenRule(propertyName: "password", message: "Password name is empty!"))
        }
        
    }
}

