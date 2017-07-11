//
//  ContactListInteractor.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

struct ContactListInteractor {

    var router: ContactListRouter?
    
    func loadDataFromServer(callback: (Bool) -> Void) {
        callback(true)
    }
}
