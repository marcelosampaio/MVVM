//
//  DataAccess.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class DataAccess {
    
    func getAllUsers() -> [User] {
        
        var users = [User]()
        users.append(User(firstName: "Marcelo", lastName: "Sampaio", email: "marcelo@meu.com", password: "1234"))
        users.append(User(firstName: "Max", lastName: "Amarantes", email: "amarantes@porton.com", password: "jah&22"))
        users.append(User(firstName: "Vina", lastName: "Borges", email: "vb@gmail.com", password: "19818181ss"))
        users.append(User(firstName: "Zoom", lastName: "Guerreiro", email: "zu@guerra.com", password: "poqpqjhhd"))
        
        return users
        
        
        
        
    }
    
    
}
