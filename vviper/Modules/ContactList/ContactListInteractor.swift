//
//  ContactListInteractor.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

class ContactListInteractor {
    
    let table = ["Michel", "Blazej", "Alain", "Guillaume", "Xavier"]
    
    func loadDataFromServer(member: String?, callback: ([String]?) -> Void) {
        
        guard let member = member else {
            callback(table)
            return
        }
        
        var tableForMember = table
        let memberIndex = table.index(of: member)
        guard let memberIndexOut = memberIndex else {
            return callback([])
        }
        
        tableForMember.remove(at: memberIndexOut)
        callback(tableForMember)
    }
}
