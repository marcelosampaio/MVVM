//
//  UsersController.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//
// checking github update issue

import UIKit

class UsersController: UITableViewController {
    
    // MARK: - Properties
    private var usersListViewModel : UsersListViewModel!
    private var dataAccess : DataAccess = DataAccess()
    

    // MARK: - View life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Users"
        self.usersListViewModel = UsersListViewModel()
        self.tableView.reloadData()
    }



    // MARK: - TableView Delegate
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.usersListViewModel.userViewModels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let userViewModel = self.usersListViewModel.userViewModels[indexPath.row]
        
        cell.textLabel?.text = "\(userViewModel.lastName.value!), \(userViewModel.firstName.value!)"

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showUserDetail", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showUserDetail" {
            let indexPath = (tableView.indexPathForSelectedRow)!
            let controller = segue.destination as! UserDetailController
            controller.selectedUserViewModel = usersListViewModel.userViewModels[indexPath.row]
            
        }
    }


    
}
