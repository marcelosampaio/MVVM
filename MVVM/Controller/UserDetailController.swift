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
    @IBOutlet weak var firstNameTextField: BindingTextField! {
        didSet {
            firstNameTextField.bind {
                self.registrationViewModel.firstName = $0
            }
        }
    }
    @IBOutlet weak var lastNameTextField: BindingTextField!
        {
        didSet {
            lastNameTextField.bind {
                self.registrationViewModel.lastName = $0
            }
        }
    }
    @IBOutlet weak var emailNameTextField: BindingTextField! {
        didSet {
            emailNameTextField.bind {
                self.registrationViewModel.email = $0
            }
        }
    }
    @IBOutlet weak var passwordTextField: BindingTextField! {
        didSet {
            passwordTextField.bind {
                self.registrationViewModel.password = $0
            }
        }
    }
    
    
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "User Info"
        
        self.registrationViewModel = RegistrationViewModel()
        
        
        
        firstNameTextField.text = selectedUserViewModel.firstName.value!
        lastNameTextField.text = selectedUserViewModel.lastName.value!
        emailNameTextField.text = selectedUserViewModel.email.value!
        passwordTextField.text = selectedUserViewModel.password.value!
    }

    // MARK: - UI Actions
    @IBAction func saveAction(_ sender: Any) {
        
        print("registration view model: \(self.registrationViewModel)")
        
        
        // get values from UI text fields and populate the registration view model
        self.registrationViewModel = RegistrationViewModel.init(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, email: emailNameTextField.text!, password: passwordTextField.text!)

        // convert registration view model to a domain model which can later be passed to a web service, data persistence classes....
        self.registrationViewModel.save()
    }
    
}
