//
//  UsersListViewModel.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class UsersListViewModel {
    var userViewModels : [UserViewModel] = [UserViewModel]()
    private var dataAccess = DataAccess()
    
    init(dataAccess: DataAccess) {
        self.dataAccess = dataAccess
        populateUsers()
    }
    
    private func populateUsers() {
        let users = self.dataAccess.getAllUsers()
        self.userViewModels = users.map { user in
            return UserViewModel(user: user)
        }
    }
    
}



