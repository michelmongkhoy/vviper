//
//  ContactListPresenter.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactListPresenter {
    
    var interactor: ContactListInteractor?
    
    var router: ContactListRouter?
    
    var member: String?
    
    var dataHasChanged: (([String]?) -> Void)?
    
    func reloadData() {
        guard let interactor = interactor else {
            return
        }
        
        interactor.loadDataFromServer(member: member) { (result) in
            self.dataHasChanged!(result)
        }
    }
    
    func presentContactListDetails(contact: String?) {
        router?.showContactDetails(contact: contact)
    }
    
}
