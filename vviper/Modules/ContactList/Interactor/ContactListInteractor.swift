//
//  ContactListInteractor.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

struct ContactListInteractor {
    
    let table = ["Michel", "Blazej", "Alain", "Guillaume", "Xavier"]
    
    func loadDataFromServer(callback: ([String]?) -> Void) {
        callback(table)
    }
}
