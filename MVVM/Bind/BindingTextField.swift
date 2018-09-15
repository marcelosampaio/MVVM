//
//  BindingTextField.swift
//  MVVM
//
//  Created by Marcelo on 15/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation
import UIKit

class BindingTextField : UITextField {
    var textChanged : (String) -> () = { _ in }
    
    func bind(callback: @escaping (String) -> ()) {
        self.textChanged = callback
        self.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        
    }
    @objc func textFieldDidChange(_ textField: UITextField) {
        self.textChanged(textField.text!)
        print("textFiled changed - textFIeld: \(String(describing: textField.text))")
        
    }
    
}
