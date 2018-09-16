//
//  Dynamic.swift
//  MVVM
//
//  Created by Marcelo on 16/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class Dynamic <T> {
    
    typealias Listener = (T) -> Void
    var listener : Listener?
    
    func bind(listener: Listener?) {
        self.listener = listener
        listener?(value!)
    }
    
    var value : T? {
        didSet {
            listener?(value!)
        }
    }
    init(_ v: T?) {
        value = v
    }
}
