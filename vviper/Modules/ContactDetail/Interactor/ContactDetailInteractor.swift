//
//  ContactDetailInteractor.swift
//  vviper
//
//  Created by Xavier Maillot on 11/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

class ContactDetailInteractor {
    var router: ContactListRouter?
    
    let table = ["Michel", "Blazej", "Alain", "Guillaume", "Xavier"]
    
    func loadDataFromServer(id: Int, callback: (String) -> Void) {
        callback(table[id])
    }
}
