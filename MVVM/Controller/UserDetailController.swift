//
//  UserDetailController.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class UserDetailController: UITableViewController {
    
    // MARK: - Properties
    public var selectedUserViewModel : UserViewModel!
    private var registrationViewModel : RegistrationViewModel!
    
    
    
    // MARK: - Outlets
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "User Info"
        
        firstNameTextField.text = selectedUserViewModel.firstName!
        lastNameTextField.text = selectedUserViewModel.lastName!
        emailNameTextField.text = selectedUserViewModel.email!
        passwordTextField.text = selectedUserViewModel.password!
    }

    // MARK: - UI Actions
    @IBAction func saveAction(_ sender: Any) {
        // get values from UI text fields and populate the registration view model
        self.registrationViewModel = RegistrationViewModel.init(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, email: emailNameTextField.text!, password: passwordTextField.text!)
        
        // convert registration view model to a domain model which can later be passed to a web service, data persistence classes....
        self.registrationViewModel.save()
        
        // now you can save the user
        print("save user action.")
    }
    
}
